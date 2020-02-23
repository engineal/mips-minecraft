#!/usr/bin/env python3
"""Convert a file into a Minecraft function to load it into a Minecraft world."""
import argparse
import os


class InputFileProcessor:
    """Process the input file."""

    def __init__(self, file, language=None):
        self.file = file
        self.language = language if language else os.path.splitext(file.name)[1].lstrip('.')

    def process(self, offset):
        """Process the input file, returning a dict of memory address to value."""
        if self.language == 'elf':
            return self.__process_elf(offset)
        elif self.language == 'srec':
            return self.__process_srec(offset)
        else:
            return self.__process_binary(offset)

    def __process_elf(self, offset):
        """Process the elf input file."""
        from elftools.elf.elffile import ELFFile
        elf_file = ELFFile(self.file)

        if elf_file.get_machine_arch() != 'MIPS':
            raise RuntimeError('ERROR: the binary must target a MIPS machine')

        if elf_file.elfclass != 32:
            raise RuntimeError('ERROR: the binary must target a 32 bit machine')

        # Get byte order of the file
        byteorder = 'big'
        if elf_file.little_endian:
            byteorder = 'little'

        data = dict()
        for sect in elf_file.iter_sections():
            print(
                f'Section "{sect.name}" at offset 0x{sect.header["sh_offset"]:08x} with size {sect.header["sh_size"]:d}')
            if sect.name == '.text':
                x = 0
                while x < len(sect.data()):
                    word = int.from_bytes(sect.data()[x:x + 4], byteorder=byteorder)
                    data[offset] = word
                    x += 4
                    offset += 4
        return data

    def __process_srec(self, offset):
        """Process the srec input file."""
        raise NotImplementedError

    def __process_binary(self, offset):
        """Process the binary input file."""
        raise NotImplementedError


class CommandGenerator:
    """Create Minecraft commands to store this word."""

    def __init__(self, oformat):
        self.oformat = oformat

    def generate(self, data):
        """Create Minecraft commands to store this word from a dict of memory address to value."""
        if self.oformat is 'setblock':
            return self.__generate_setblock(data)
        else:
            return self.__generate_function(data)

    @staticmethod
    def __generate_setblock(data):
        """Create Minecraft commands to store this word using setblock."""
        raise NotImplementedError

    @staticmethod
    def __generate_function(data):
        """Create Minecraft commands to store this word using the mips32r6:mem/write function."""
        commands = list()
        for address, value in data.items():
            # Cast unsigned words to 32-bit signed ints
            if address & 0x80000000:
                address = -0x100000000 + address

            if value & 0x80000000:
                value = -0x100000000 + value

            commands.append(f"scoreboard players set address mips32r6_mem {address:d}")
            commands.append(f"scoreboard players set value mips32r6_mem {value:d}")
            commands.append(f"function mips32r6:mem/write")

        return commands


def main():
    """The main function."""
    parser = argparse.ArgumentParser(description='Convert an input file into a Minecraft function to load the input '
                                                 'file into Minecraft.')
    parser.add_argument('file', type=argparse.FileType('rb'),
                        help='The input file to convert.')
    parser.add_argument('-x', '--language', choices=['elf', 'srec', 'binary'],
                        help='Specify the language of the input file. If this argument is not provided then the '
                             'language will be determined based on the file\'s extension, defaulting to binary.')
    parser.add_argument('-o', '--ofile', type=argparse.FileType('w'), default='out.mcfunction',
                        help='Place the output into OFILE.')
    parser.add_argument('--oformat', choices=['function', 'setblock'], default='function',
                        help="Specify the format of the commands in the output file."
                             "'function' will use the mips32r6:mem/write function to load the file."
                             "'setblock' will use setblock commands to load the file."
                             "Defaults to function.")
    parser.add_argument('-a', '--offset', type=lambda x: int(x, 0), default=0,
                        help='Place the file in memory starting at OFFSET.')
    args = parser.parse_args()

    input_processor = InputFileProcessor(args.file, args.language)
    command_generator = CommandGenerator(args.oformat)

    data = input_processor.process(args.offset)
    commands = command_generator.generate(data)

    commands.append(f'tellraw @p {{"text":"Loaded {os.path.basename(args.file.name)}!","color":"green"}}')

    args.ofile.write('\n'.join(commands))
    args.ofile.write('\n')


if __name__ == "__main__":
    main()
