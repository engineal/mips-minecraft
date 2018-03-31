#!/usr/bin/env python3
"""Convert MIPS binary into .mcfunction."""
import argparse


def process_word(word, offset, byteorder):
    """Create minecraft commands to store this word."""
    word = int.from_bytes(word, byteorder=byteorder)
    # Cast word to a 32-bit signed int
    if(word & 0x80000000):
        word = -0x100000000 + word

    commands = list()
    commands.append("scoreboard players set address mem {0:d}".format(offset))
    commands.append("scoreboard players set value mem {0:d}".format(word))
    commands.append("function asm:mem/write".format(offset))
    return commands


def main():
    """The main function."""
    parser = argparse.ArgumentParser(description='Convert MIPS binary into .mcfunction.')
    parser.add_argument('binary', help='The MIPS binary')
    parser.add_argument('-b', '--byteorder', choices=['big', 'little'], help='The byte order of the provided binary')
    parser.add_argument('-a', '--offset', help='The memory offset')
    parser.add_argument('-o', '--file', help='The file to create for the .mcfunction')
    args = parser.parse_args()

    offset = 0
    if args.offset:
        offset = args.offset

    output_file = 'out.mcfunction'
    if args.file:
        output_file = args.file

    byteorder = 'big'
    if args.byteorder:
        byteorder = args.byteorder

    commands = list()
    with open(args.binary, "rb") as in_file:
        word = in_file.read(4)
        while word:
            commands.extend(process_word(word, offset, byteorder))
            word = in_file.read(4)
            offset += 4

    with open(output_file, "w") as out_file:
        out_file.write('\n'.join(commands))


if __name__ == "__main__":
    main()
