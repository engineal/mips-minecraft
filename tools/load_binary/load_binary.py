#!/usr/bin/env python3
"""Convert binary file into .mcfunction to load into Minecraft."""
import argparse
import os
from elftools.elf.elffile import ELFFile


def process_word(word, offset):
    """Create minecraft commands to store this word."""
    # Cast word to a 32-bit signed int
    if(word & 0x80000000):
        word = -0x100000000 + word

    commands = list()
    commands.append("scoreboard players set address mem {0:d}".format(offset))
    commands.append("scoreboard players set value mem {0:d}".format(word))
    commands.append("function asm:mem/write".format(offset))
    return commands


def process_section_data(data, offset, byteorder):
    commands = list()
    x = 0
    while x < len(data):
        word = int.from_bytes(data[x:x+4], byteorder=byteorder)
        commands.extend(process_word(word, offset))
        x += 4
        offset += 4
    return commands, offset


def main():
    """The main function."""
    parser = argparse.ArgumentParser(description='Convert binary file into .mcfunction to load into Minecraft.')
    parser.add_argument('binary', help='The binary file')
    parser.add_argument('-a', '--offset', help='The memory offset')
    parser.add_argument('-o', '--file', help='The .mcfunction file to create')
    args = parser.parse_args()

    offset = 0
    if args.offset:
        offset = int(args.offset)

    output_file = 'out.mcfunction'
    if args.file:
        output_file = args.file
        if '.mcfunction' not in output_file:
            output_file += '.mcfunction'

    commands = list()
    with open(args.binary, "rb") as in_file:
        elffile = ELFFile(in_file)

        if elffile.get_machine_arch() != 'MIPS':
            print('ERROR: the binary must target a MIPS machine')
            return

        if elffile.elfclass != 32:
            print('ERROR: the binary must target a 32 bit machine')
            return

        # Get byte order of the file
        byteorder = 'big'
        if elffile.little_endian:
            byteorder = 'little'

        for sect in elffile.iter_sections():
            print('Section "{0}" at offset 0x{1:08x} with size {2:d}'.format(
                sect.name, sect.header['sh_offset'], sect.header['sh_size']))
            if sect.name == '.text':
                new_commands, offset = process_section_data(sect.data(), offset, byteorder)
                commands.extend(new_commands)

    commands.append("tellraw @p {\"text\":\"Installed " + os.path.basename(args.binary) + "!\",\"color\":\"green\"}")

    with open(output_file, "w") as out_file:
        out_file.write('\n'.join(commands))
        out_file.write('\n')


if __name__ == "__main__":
    main()
