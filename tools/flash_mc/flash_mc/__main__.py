import argparse
import os

from .reader import BinaryFileReader
from .output import get_generator


def main():
    parser = argparse.ArgumentParser(description='Create a Minecraft function that will load an input file into into '
                                                 'Minecraft.')
    parser.add_argument('in_file', metavar='in-file',
                        help='The input file.')
    parser.add_argument('out_file', metavar='out-file', nargs='?', default='out.mcfunction',
                        help='The output file.')
    parser.add_argument('-O', '--output-target', choices=['function', 'setblock'], default='function',
                        help="Create an output file in format. "
                             "'function' will use the mips32r6:mem/write function to load the file. "
                             "'setblock' will use setblock commands to load the file. "
                             "Defaults to function.")
    parser.add_argument('--set-start', metavar='<addr>', type=lambda x: int(x, 0), default=0, dest='start',
                        help='Set the start address to <addr>.')
    args = parser.parse_args()

    input_reader = BinaryFileReader(args.in_file)
    command_generator = get_generator(args.output_target)

    with open(args.out_file, 'w') as f:
        for command in command_generator.generate(input_reader, args.start):
            f.write(f'{command}\n')

        f.write(f'tellraw @p {{"text":"Loaded {os.path.basename(args.in_file)}!","color":"green"}}\n')


if __name__ == "__main__":
    main()
