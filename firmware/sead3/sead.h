/*
 * sead.h
 *
 */
/*
Copyright (c) 2007-2018, MIPS Tech, LLC and/or its affiliated group companies or licensors

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of
conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list
of conditions and the following disclaimer in the documentation and/or other materials
provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be
used to endorse or promote products derived from this software without specific prior
written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#ifndef SEAD_H_
#define SEAD_H_

#define SEAD3_LCD            0x1F000400
#define SEAD3_LCDCTL         0x1F000400
#define SEAD3_LCDDATA        0x1F000408
#define SEAD3_LCDCPLDSTATUS  0x1F000410
#define SEAD3_LCDCPLDDATA    0x1F000418

#define KSEG_MSK             0xE0000000
#define KSEG1BASE            0xA0000000
#define KSEG1(addr) addr | KSEG1BASE
#define KSEG1A(reg) and reg, ~KSEG_MSK; or reg, KSEG1BASE

// MSG is used to put a string in memory with a label (assemble code only)
#define MSG( name, s ) \
  .##align 3;      \
name:   .##asciiz  s

// DISP_STR will display a string on to the LCD on the Sead board
#define DISP_STR( s );\
    la   a0, s;\
    KSEG1A( a0 );\
    move v1, ra;\
    la   a2, sys_disp_string;\
    jalr a2;\
    move ra, v1

#endif /* SEAD_H_ */
