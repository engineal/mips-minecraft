#!/usr/bin/env python3
import argparse
from collections import namedtuple
from functools import reduce
from operator import mul
from os import path

Info = namedtuple('Info', 'start height')
Point = namedtuple('Point', 'x y')
Dimension = namedtuple('Dimension', 'width height')

def create_commands(lines):
    commands = []
    data = []
    for line in lines:
        if line.startswith('#') or len(line) < 1:
            commands.append(line)
        else:
            data.append(line)
            commands.append(f"# {line}")
    commands.append("")

    mat = [[int(x) for x in list(line)] for line in data]
    rectangles = find_rectangles(mat)

    for coords, size in rectangles:
        x = -coords.x
        y = -coords.y
        if area(size) == 1:
            commands.append(f"setblock ~{x} ~{y} ~ minecraft:white_wool")
        else:
            x2 = 1 - (coords.x + size.width)
            y2 = 1 - (coords.y + size.height)
            commands.append(f"fill ~{x} ~{y} ~ ~{x2} ~{y2} ~ minecraft:white_wool")

    return commands

def find_rectangles(mat):
    rectangles = []
    size, coords = max_size(mat, 1)
    while area(size) > 0:
        rectangles.append((coords, size))

        # Remove rectangle
        for x in range(coords.x, coords.x + size.width):
            for y in range(coords.y, coords.y + size.height):
                mat[y][x] = 0

        # Find next rectangle
        size, coords = max_size(mat, 1)

    return rectangles

def max_size(mat, value=0):
    """Find height, width of the largest rectangle containing all `value`'s."""
    it = iter(mat)
    hist = [(el==value) for el in next(it, [])]
    max_size, x = max_rectangle_size(hist)
    max_coordinates = Point(x, 0) # left, top coordinates of the largest rectangle
    for row_index, row in enumerate(it):
        hist = [(1+h) if el == value else 0 for h, el in zip(hist, row)]
        new_size, new_x = max_rectangle_size(hist)
        if area(max_size) < area(new_size):
            max_size = new_size
            max_coordinates = Point(new_x, row_index - new_size.height + 2)
    return max_size, max_coordinates

def max_rectangle_size(histogram):
    """Find height, width of the largest rectangle that fits entirely under
    the histogram.
    """
    stack = []
    top = lambda: stack[-1]
    max_size = Dimension(0, 0) # width, height of the largest rectangle
    max_start = 0
    pos = 0 # current position in the histogram
    for pos, height in enumerate(histogram):
        start = pos # position where rectangle starts
        while True:
            if not stack or height > top().height:
                stack.append(Info(start, height)) # push
            elif stack and height < top().height:
                new_size = Dimension((pos - top().start), top().height)
                if area(max_size) < area(new_size):
                    max_size = new_size
                    max_start = top().start
                start, _ = stack.pop()
                continue
            break # height == top().height goes here

    pos += 1
    for start, height in stack:
        new_size = Dimension((pos - start), height)
        if area(max_size) < area(new_size):
            max_size = new_size
            max_start = start
    return max_size, max_start

def area(size):
    return reduce(mul, size)

def main():
    """The main function."""
    parser = argparse.ArgumentParser(description='Convert font file into Minecraft commands.')
    parser.add_argument('-f', '--file', help='The font file')
    parser.add_argument('-w', '--write', help='The directory to create the .mcfunction files in')
    args = parser.parse_args()

    file_name = "font.txt"
    if args.file:
        file_name = args.file
    if not path.isfile(file_name):
        print(f"{file_name} must exist!")
        exit(1)

    output_dir = path.dirname(path.realpath(__file__))
    if args.write:
        output_dir = args.write
    if not path.isdir(output_dir):
        print(f"{output_dir} must be a directory!")
        exit(1)

    char_lines = [] # An array of arrays that contain the input lines, one array per character
    with open(file_name) as f:
        lines = []
        for line in f.readlines():
            if line.startswith('#') and len(lines) > 0:
                char_lines.append(lines)
                lines = []
            lines.append(line.rstrip())
        char_lines.append(lines)

    if len(char_lines) != 96:
        print("The font file should have 95 ASCII characters defined!")
        exit(1)

    for char, lines in enumerate(char_lines):
        commands = create_commands(lines)

        char = char + 0x20
        output_file = path.join(output_dir, f"{char:x}.mcfunction")
        with open(output_file, "w") as out_file:
            out_file.write('\n'.join(commands))
            out_file.write('\n')


if __name__ == "__main__":
    main()
