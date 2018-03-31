# mips-minecraft
A Minecraft datapack that creates a MIPS emulator in a Minecraft world. It currently emulates a single cycle, single core 32-bit MIPS R2000 processer. It can complete 1 instruction every Minecraft tick; if run from a repeating command block, will have a clock speed of 20Hz.

This is still a WIP, and there is much left to finish.

### Author
@engineal

### Requirements
Minecraft 1.13

## Datapack Install
Create a new world in creative mode (I prefer the void super-flat preset). Then copy `src/engineal` into the world's datapack directory. A world download may come eventually, along with a zip file release.

**Caution: this datapack will replace blocks on load, so be careful if adding to an existing world!**

## Compiling and assembling code
This MIPS emulator should be able to run any binary compiled or assembled for the MIPS architecture. I've used the MIPS assembler by Alan J. Hogan (https://alanhogan.com/asu/assembler.php) with success. You should also be able to cross compile using gcc, although this is something I have yet to try.

## Loading MIPS binaries
MIPS binaries can be loaded into the emulator's memory through Minecraft commands. The included `load_binary.py` Python script will convert MIPS binaries into a .mcfunction file, which you can then run in Minecraft to load the binary into memory.

Currently, the processer starts executing code at address 0, so before loading any binaries, you might need to apply address offsets. The script allows you to specify the address that the binary will be loaded at, but will not adjust jmp instructions. This will change eventually upon introduction of virtual memory, which I have planned.

## Running the emulator
The emulator can be stepped with the `function asm:cpu` command. To run a program, place that command in a repeating command block. The `reload` command will reset the emulator.

To debug either the emulator or your binary, you can set emulator debug levels for each component through the scoreboard:
* `scoreboard players debug cpu set <level>` (0-2)
* `scoreboard players debug alu set <level>` (0-1)
* `scoreboard players debug mem set <level>` (0-2)
* `scoreboard players debug reg set <level>` (0-1)

## Planned features
#### Hardware
* Virtual memory
* Permanent storage
* Display
* Floating-point accelerator
* Multi-core GPU
* Potentally

#### Software
* Emulator firmware
* Bootloader
* Basic OS

## License
#### MIT License

Copyright (c) 2018 Aaron Lucia

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
