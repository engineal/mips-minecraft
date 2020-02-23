# mips-minecraft
A Minecraft datapack that creates a MIPS emulator in a Minecraft world. The goal of this project is to emulate a MIPS32 Release 6 processor. It can execute at least 1 instruction every Minecraft tick, resulting in a base clock speed of 20Hz. It can now also be overclocked to execute more than 1 instruction per tick, but care has to be taken so that we don't exceed the maxCommandChainLength gamerule. Depending on what your computer can handle, with the default maxCommandChainLength of 65,536 it can probably be overclocked with a x64 multiplier, giving us a clock speed of 1.28 kHz.

This is still a work in progress, and there is much left to finish.

### Author
@engineal

### Requirements
Minecraft 1.13.2 or newer

## Datapack Install
Create a new world in creative mode (I prefer the void super-flat preset). Then copy `datapack/engineal` into the world's datapack directory. A world download may come eventually, along with a zip file release.

**Caution: this datapack will replace blocks on load, so be careful if adding to an existing world!**

## Compiling and assembling code
This MIPS emulator should be able to run any binary created for the MIPS architecture, although keep in mind this project is very much still a WIP. I've used the following toolchains to cross-compile for the MIPS architecture: https://codescape.mips.com/components/toolchain/2019.09-01/index.html.

Example commands:
* Assemble code: `as exception.s -o exception.o -mips32r6`
* Or: `mips-mti-elf-gcc exception.s -mips32r6 -c`
* Link code: `ld exception.o -o exception.bin --oformat=binary`
* Combined: `mips-mti-elf-gcc exception.s -o exception.bin -Xlinker --oformat=binary`
* Extract binary from object file: `objcopy -O binary exception.o exception.bin`

## Loading MIPS binaries
MIPS binaries can be loaded into the emulator's memory through Minecraft commands. The included `tools/load_binary` Python script will convert MIPS binaries into a .mcfunction file, which you can then run in Minecraft to load the binary into memory.

Currently, the processor starts executing code at address 0, so before loading any binaries, you might need to apply address offsets. The script allows you to specify the address that the binary will be loaded at, but will not relocate memory addresses yet.

## Running the emulator
The emulator can be stepped with the `function hardware:cpu` command. To run a program, set the tick score for player running to 1 using `scoreboard players set running tick 1`. The `reload` command will reset the emulator.

To debug either the emulator or your binary, you can set emulator debug levels for each component through the scoreboard:
* `scoreboard players set debug cpu <level>` (0-1)
* `scoreboard players set debug alu <level>` (0-1)
* `scoreboard players set debug mem <level>` (0-2)
* `scoreboard players set debug reg <level>` (0-1)

## Planned features
#### Hardware
* Virtual memory
* Permanent storage
* Proper text mode display
* IO (such as buttons)
* Floating-point accelerator
* Multi-core GPU
* "Speakers"

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
