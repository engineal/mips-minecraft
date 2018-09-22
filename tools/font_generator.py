#!/usr/bin/env python3
from collections import namedtuple
from functools import reduce
from operator import mul

Info = namedtuple('Info', 'start height')
Point = namedtuple('Point', 'x y')
Dimension = namedtuple('Dimension', 'width height')

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

find_rectangles([[1,0,0],
                 [1,0,0],
                 [0,0,1]])

