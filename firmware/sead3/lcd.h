/*
 * lcd.h
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

#ifndef LCD_H_
#define LCD_H_

#define LCD_NOP                 0x00 /* Nop */
#define LCD_CLEAR               0x01 /* Clear display and home cursor */
#define LCD_HOME                0x02 /* Home cursor */
#define LCD_ENTRYMODE           0x04 /* Entry Mode Set */
#define LCD_ENTRYMODE_INC       2    /*  increment mode */
#define LCD_ENTRYMODE_SHIFT     1    /*  shift mode */
#define LCD_DISPCONTROL         0x08    /* Display control */
#define LCD_DISPCONTROL_DISPLAY 4    /*  display on */
#define LCD_DISPCONTROL_CURSOR  2    /*  cursor on */
#define LCD_DISPCONTROL_BLINK   1    /*  blink on */
#define LCD_SHIFT               0x10 /* Display Shift */
#define LCD_SHIFT_L_CURSOR      0    /*  cursor left, decrease AC */
#define LCD_SHIFT_R_CURSOR      1    /*  cursor right, increase AC */
#define LCD_SHIFT_L_DISPLAY     2    /*  display left */
#define LCD_SHIFT_R_DISPLAY     3    /*  display right */
#define LCD_FUNCTIONSET         0x20 /* Function set */
#define LCD_FUNCTIONSET_5X11    4    /*  8x11 font */
#define LCD_FUNCTIONSET_2LINE   8    /*  2 line display mode */
#define LCD_FUNCTIONSET_8BIT    16   /*  8 bit data */
#define LCD_SETCGRAM            0x40 /* Set CGRAM address */
#define LCD_SETDDRAM            0x80 /* Set DDRAM address */

/* LCD instruction read */
#define LCD_IR_BF               0x80 /* Busy Flag  */
#define LCD_IR_ACMASK           0x7f /* AC mask */

/* SEAD3 LCD access routines */

#define LCDOFF(r) (SEAD3_LCD##r - SEAD3_LCDCTL)

/*
 * wait for CPLD state machine to become ready
 * b contains LCD base
 * destroys t
 */
#define _CPLD_WAIT(b,t) \
1:  lbu  t,LCDOFF(CPLDSTATUS)(b);  \
  andi  t,1; \
  bnezc  t,1b

/*
 * Write LCD control register
 * b contains LCD base
 * destroys t
 */
#define _LCD_CTL_W(b,t,c) \
  _CPLD_WAIT(b); \
  li  t,c; \
  sw  t,LCDOFF(CTL)(b)

/*
 * Write LCD data register
 * b contains LCD base
 * destroys t
 */
#define _LCD_DATA_W(b,t,c) \
  _CPLD_WAIT(b,t); \
  li  t,c; \
  sw  t,LCDOFF(DATA)(b)

/*
 * Read LCD control register
 * b contains LCD base
 * result in t
 */
#define _LCD_CTL_R(b,t) \
  _CPLD_WAIT(b,t); \
  lbu  t,LCDOFF(CTL)(b); \
  _CPLD_WAIT(b,t); \
  lbu  t,LCDOFF(CPLDDATA)(b)

/*
 * Wait for LCD Read LCD control register
 * b contains LCD base
 * destroys t
 */
#define _LCD_WAIT(b,t) \
  _CPLD_WAIT(b,t); \
2:  lbu  t,LCDOFF(CTL)(b); \
  _CPLD_WAIT(b,t); \
  lbu  t,LCDOFF(CPLDDATA)(b); \
  andi  t,0x80; \
  bnezc  t,2b

/*
 * Write LCD command register
 * b contains LCD base
 * destroys t
 * cimm is command literal
 */
#define SEAD3_LCD_CMD(b,t,cimm) \
  _LCD_WAIT(b,t); \
  li  t,cimm; \
  sw  t,LCDOFF(CTL)(b)

/*
 * Write LCD data register
 * b contains LCD base
 * destroys t
 * cimm is character literal
 */
#define SEAD3_LCD_DATA(b,t,cimm) \
  _LCD_WAIT(b,t); \
  li  t,cimm; \
  sw  t,LCDOFF(DATA)(b)

/*
 * Write LCD data register
 * b contains LCD base
 * destroys t
 * creg contains character
 */
#define SEAD3_LCD_RDATA(b,t,creg) \
  _LCD_WAIT(b,t); \
  sw  creg,LCDOFF(DATA)(b)


#endif /* LCD_H_ */
