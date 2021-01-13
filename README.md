# mips-minecraft
A Minecraft datapack that emulates a MIPS32 Release 6 processor in a Minecraft world.

This is still a work in progress, and there is much left to finish.

### Author
Aaron Lucia (@engineal)

### Requirements
Minecraft 1.16.2 or newer

## Datapack Install

1. Create a new world in creative mode (I prefer the void super-flat preset).
2. Then copy the `datapacks/mips32r6` directory into the world's datapack directory.

A world download may come eventually, along with a zip file release.
To include the VGA display (currently inoperable), you can copy the `datapacks/vga` directory into the world's datapack directory as well.

**Caution: this datapack will replace blocks on load, so be careful if adding to an existing world!**

There is a test suite that validates that the emulator is operating as expected.
To run the test suite, copy the `datapacks/test` directory into the world's datapack directory and run the `function #test:all` Minecraft command.
Individual or sub-groups of tests can be also be run by executing those tags/functions directly.

## Running the emulator
To start the emulator, set the `running mips32r6_tick` score to 1 by running the `scoreboard players set running mips32r6_tick 1` Minecraft command.
To halt the emulator, set the `running mips32r6_tick` score to 0 by running the `scoreboard players set running mips32r6_tick 0` Minecraft command.
A single CPU cycle can executed by running the `function mips32r6:cpu` Minecraft command, which can be useful to debug a program.
The `reload` Minecraft command will reset the emulator, clearing all registers and memory and placing the program counter at the reset vector.

By default, a single Minecraft tick will execute a single CPU cycle while the emulator is running, resulting in a base clock speed of 20Hz.
You can overclock the emulator by setting the `multiplier mips32r6_tick` score to the number of CPU cycles to execute per Minecraft tick.
Care should be taken so that you don't exceed the maxCommandChainLength gamerule limit; if a multiplier causes the command limit to be reached, you will see an error in the chat and the CPU will halt.
Depending on what the host computer can handle, with the default maxCommandChainLength of 65,536 an overclock with a x64 multiplier should be achievable, resulting in a clock speed of 1.28 kHz.

To debug either the emulator or your binary, you can set emulator debug levels for each component through the scoreboard:
* `scoreboard players set debug mips32r6_cpu <level>` (0-1)
* `scoreboard players set debug mips32r6_alu <level>` (0-1)
* `scoreboard players set debug mips32r6_mem <level>` (0-4)
* `scoreboard players set debug mips32r6_reg <level>` (0-1)

## Compiling and assembling code
This MIPS emulator will eventually be able to run any binary created for the MIPS32 architecture, although keep in mind this project is very much still a WIP. I've used the following toolchain to cross-compile for the MIPS architecture: https://codescape.mips.com/components/toolchain/2020.06-01/index.html.

Example commands:
* Assemble code: `as example.s -o example.o -mips32r6`
* Or: `mips-mti-elf-gcc example.s -mips32r6 -c`
* Link code: `ld example.o -o example.bin --oformat=binary`
* Combined: `mips-mti-elf-gcc example.s -o example.bin -Xlinker --oformat=binary`
* Extract binary from object file: `objcopy -O binary example.o example.bin`

## Loading MIPS binaries
MIPS binaries can be loaded into the emulator's memory through Minecraft commands. The included `flash_mc` Python app will convert binary files into a .mcfunction file, which you can then run in Minecraft to load the binary into memory.

Currently, the processor starts executing code at ROM address 0, so before loading any binaries, you might need to apply address offsets. The script allows you to specify the address that the binary will be loaded at, but will not relocate memory addresses yet.

## Planned features
#### Hardware
* Virtual memory (in-progress)
* TLB
* Permanent storage
* Proper text mode display
* IO (such as buttons)
* Floating-point accelerator
* Multi-core GPU
* "Speakers"

#### Software
* Firmware
* Bootloader
* Basic OS

## Custom Hardware
The MIPS processor uses memory mapped I/O to communicate with other hardware components.

To create your own custom hardware that can communicate with this emulator:

1. Create a new minecraft datapack: https://minecraft.gamepedia.com/Data_pack.

   Note: you'll want to make sure you create a new namespace for your component's functions. If you use the mips32r6 namespace or a namespace used by another datapack, you risk colliding with existing functions and something might break.


2. If your hardware will handle read requests, create a new function to handle memory read requests.

   1. This function should read the physical address from the `physical_address mips32r6_mem` scoreboard value. Your function should only respond to the range of physical address that you'll need. You'll have to make sure this range doesn't collide with any other hardware components.
   2. This function should return the read value in the `value mips32r6_mem` scoreboard value.
   3. This function should increment the `handled mips32r6_mem` scoreboard value.
   4. Tag your read function in the mips32r6:read tag by including your read function in a file with this path: `data/mips32r6/tags/functions/read.json`.


3. If your hardware will handle write requests, create a new function to handle memory write requests.

   1. This function should read the physical address from the `physical_address mips32r6_mem` scoreboard value. Your function should only respond to the range of physical address that you'll need. You'll have to make sure this range doesn't collide with any other hardware components.
   2. This function should write the value in the `value mips32r6_mem` scoreboard value.
   3. This function should increment the `handled mips32r6_mem` scoreboard value.
   4. Tag your write function in the mips32r6:write tag by including your write function in a file with this path: `data/mips32r6/tags/functions/write.json`.


Take a look at the RAM, ROM, and VGA hardware components in this repo for an example.


## License
#### MIT License

Copyright (c) 2020 Aaron Lucia

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
