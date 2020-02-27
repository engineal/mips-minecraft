# M6200 makefile

# Copyright (c) 2007-2018, MIPS Tech, LLC and/or its affiliated group companies or licensors
#
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this list of
# conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, this list
# of conditions and the following disclaimer in the documentation and/or other materials
# provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors may be
# used to endorse or promote products derived from this software without specific prior
# written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
# SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
# OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

GCC_VENDOR=mti

CC=mips-$(GCC_VENDOR)-elf-gcc
LD=mips-$(GCC_VENDOR)-elf-ld
OD=mips-$(GCC_VENDOR)-elf-objdump
OC=mips-$(GCC_VENDOR)-elf-objcopy
SZ=mips-$(GCC_VENDOR)-elf-size

# Disable optimization as the processor currently doesn't support the delayed branch slot

CFLAGS=-O0 -g -EL -mips32r6 -c -I common -I sead3 -I . -msoft-float
LDFLAGS=-T firmware.ld -EL -nostdlib -Wl,-Map=firmware_map

ASOURCES= \
start.S

CSOURCES= \
main.c

AOBJECTS=$(ASOURCES:.S=.o)
COBJECTS=$(CSOURCES:.c=.o)

.PHONY: build clean

build: $(COBJECTS) $(AOBJECTS)
	$(CC) $(LDFLAGS) $(COBJECTS) -o firmware.elf
	$(SZ) firmware.elf
	$(OD) -d -S -l firmware.elf > firmware_dasm
	$(OC) firmware.elf -O binary firmware.bin

.c.o:
	$(CC) $(CFLAGS) $< -o $@

.S.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.elf
	rm -f *dasm
	rm -f *map
	rm -f *.rec
	rm -f *.bin
	rm -f *.o
	rm -f common/*.o
	rm -f sead3/*.o
