# mips-minecraft
A Minecraft datapack that emulates a MIPS32 Release 6 processor in a Minecraft world.

This is still a work in progress, and there is much left to finish.

### Author
Aaron Lucia ([@engineal](https://github.com/engineal))

### Requirements
Minecraft Java 1.16.2 or newer

## Installation

This project provides several datapacks in the `datapacks` directory, detailed below.

To play around with this emulator, it is currently suggested to load the mips32r6 and boot datapacks.
The other datapacks either are non-functional, broken, or used for development of this project.

### New Java World
1. Go to the `Create New World` menu and enter a name for your world.
2. Choose `Game Mode: Creative` and ensure that `Allow Cheats: ON` is selected.
3. Select `Data Packs` and then `Open Pack Folder`.
4. Copy the datapacks you want to install into the folder that was opened.
5. Select the datapacks you want to enable.
Note that the ordering of the datapacks in the selected pane matters. The mips32r6 datapack should always be loaded first.
If a datapack specifies any dependencies they must be loaded before it.
You can reorder datapacks by using the up and down arrows when hovering over a datapack.

I prefer using The Void Superflat world type preset to initialize the world with no blocks:
1. Select `More World Options...` and choose `Generate Structures: OFF`.
2. Choose `World Type: Superflat`, then select `Customize`.
3. Select `Presets` and use `The Void` preset.

A world download may come eventually so that you can skip these steps, along with a zip file release of the datapacks.

### Existing Java World

**Caution: this datapack will replace blocks in your world on load, so be careful if adding to an existing world!**
You may want to take a backup first!

1. Copy the datapacks you want to install into the datapacks folder in your world's save file.
2. Use the `datapack` Minecraft command to list the available datapacks and to enable and disable them.
Note that the ordering of the datapacks in the list matters. The mips32r6 datapack should always be loaded first.
If a datapack specifies any dependencies they must be loaded before it.
You can reorder datapacks by enabling the datapacks in the order you want them loaded.

## Datapacks

* [mips32r6](#mips32r6)
* [boot](#boot)
* [test](#test)
* [vga](#vga)
* [software](#software)

### mips32r6
The MIPS32 Release 6 emulator, a 256 KB ROM, and a 2 MB RAM.

#### Dependencies
This is the main datapack and it should be ordered before any of the others.

#### Usage
To start the emulator, set the `running mips32r6_tick` score to 1 by running the `scoreboard players set running mips32r6_tick 1` Minecraft command.
To halt the emulator, set the `running mips32r6_tick` score to 0 by running the `scoreboard players set running mips32r6_tick 0` Minecraft command.
A single CPU cycle can executed by running the `function mips32r6:cpu` Minecraft command, which can be useful to debug a program.
The `reload` Minecraft command will reset the emulator, clearing all registers and memory and placing the program counter at the reset vector.

By default, a single Minecraft tick will execute a single CPU cycle while the emulator is running, resulting in a base clock speed of 20Hz.
You can overclock the emulator by setting the `multiplier mips32r6_tick` score to the number of CPU cycles to execute per Minecraft tick.
Care should be taken so that you don't exceed the maxCommandChainLength gamerule limit; if a multiplier causes the command limit to be reached, you will see an error in the chat and the CPU will halt.
Depending on what the host computer can handle, with the default maxCommandChainLength of 65,536 an overclock with a x64 multiplier should be achievable, resulting in a clock speed of 1.28 kHz.

To debug the emulator, you can set emulator logging levels for each component using the following Minecraft commands:
* `scoreboard players set alu_level logging <level>` (0-1)
* `scoreboard players set cop0_level logging <level>` (0-1)
* `scoreboard players set cpu_level logging <level>` (0-1)
* `scoreboard players set gpr_level logging <level>` (0-1)
* `scoreboard players set mem_level logging <level>` (0-4)
* `scoreboard players set rom_level logging <level>` (0-2)
* `scoreboard players set ram_level logging <level>` (0-2)

### boot
The Boot-MIPS bootloader for the MIPS32 Release 6 emulator.

#### Dependencies
* mips32r6

#### Usage
This datapack will load the Boot-MIPS bootloader into the ROM at the reset vector when the world is loaded or with the `reload` Minecraft command.
See [mips32r6-usage](#usage) for how to start the emulator.

### test
A test suite for the MIPS32 Release 6 emulator.

#### Dependencies
* mips32r6

#### Usage
Run the `function #test:all` Minecraft command to run every test. The test results will be reported in the Minecraft chat.
Individual tests or groups of tests may be also be run by executing those tags/functions directly.

### vga
A VGA display for the MIPS32 Release 6 emulator. (currently non-functional)

#### Dependencies
* mips32r6

#### Usage
This datapack will create a black screen in the world when the world is loaded or with the `reload` Minecraft command.
It currently does nothing else.

### software
Example software for the MIPS32 Release 6 emulator. (currently broken)

#### Dependencies
* mips32r6

#### Usage
Please don't use.

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
* TLB
* Permanent storage
* Proper text mode display
* IO (such as buttons)
* Floating-point accelerator
* Multi-core GPU
* "Speakers"

#### Software
* Linux
* Minecraft

## Custom Hardware
The MIPS processor uses memory mapped I/O to communicate with other hardware components.

To create your own custom hardware that can communicate with this emulator:

1. Create a new minecraft datapack: https://minecraft.gamepedia.com/Data_pack.

   Note: you'll want to make sure you create a new namespace for your component's functions. If you use the mips32r6 namespace or a namespace used by another datapack, you risk colliding with existing functions and something might break.


2. Create a new function to handle memory requests.

   1. This function should read the physical address from the `physical_address mips32r6_mem` scoreboard value. Your function should only respond to the range of physical addresses this device listens to, the function should not do anything if the physical address is outside this range. You'll have to make sure this range doesn't collide with any other hardware components.
   2. This function should read the read/write mode from the `write mips32r6_mem` scoreboard value. If the value of `write mips32r6_mem` is 0, the memory request is a read request. If the value of `write mips32r6_mem` is 1, the memory request is a write request.
      1. If the memory request is a read request, this function should return the result in the `value mips32r6_mem` scoreboard value.
      2. If the memory request is a write request, this function should read the value to write from the `value mips32r6_mem` scoreboard value.
   3. This function should increment the `handled mips32r6_mem` scoreboard value.

3. Tag this function in the mips32r6:mem tag by including your function in a file in your datapack with this path: `data/mips32r6/tags/functions/mem.json`.

Reference the RAM, ROM, and VGA hardware components in this repo for examples.


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
