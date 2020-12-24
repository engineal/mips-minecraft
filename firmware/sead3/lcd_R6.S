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


/************************************************************************
 *  Include files
 ************************************************************************/
#include <mips/asm.h>
#include <lcd.h>
#include <boot.h>
#include <sead.h>
#include <mips/regdef.h>

/************************************************************************
 *  sys_disp_string a0 pointer to null terminated string
 ************************************************************************/
LEAF(sys_disp_string)

disp_string_sead:
  /* SEAD3 LCD */
  li    a1, KSEG1(SEAD3_LCD)
  SEAD3_LCD_CMD(a1,a3,LCD_CLEAR)
sead3_lcd:
  lbu   a2, 0(a0)
  addiu a0, 1
  beqzc a2,disp_string_end
  SEAD3_LCD_RDATA(a1,a3,a2)
  bc    sead3_lcd

disp_string_end:

  jr    ra
  nop

END(sys_disp_string)
