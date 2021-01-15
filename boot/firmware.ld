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


OUTPUT_ARCH(mips)

/**** Start point ****/
ENTRY(__reset_vector)

SECTIONS
{
  _monitor_flash = 0xbfc00000 ;

  /**** Init Code (executed from reset.) ****/

  .text_init 0xbfc00000 :   /* Runs uncached (from 0x9fc00000) till I$ is initialized. */
  AT( _monitor_flash )      /* (Load address is start of Monitor Flash.) */

  {
    _ftext_init = ABSOLUTE(.) ;	/* Start of init code. */
    start.o(.text)
    . = ALIGN(8);
    _etext_init = ABSOLUTE(.);	/* End of init code. */
  } = 0

  /**** "C" Code and read-only data ****/

  _zap1 = _etext_init - _ftext_init + _monitor_flash;
  _start_rom_text = _etext_init - _ftext_init + 0xbfc00000;

  .text_ram 0x80100000 :    /* Need to copy code and read-only data to ram... */
  AT( _zap1 )               /* (Load address is after init code in Monitor Flash.) */

  {
    _ftext_ram = ABSOLUTE(.) ;	/* Start of code and read-only data */
    *(.text)*(.text.*)
    . = ALIGN(8);
    _etext_ram = ABSOLUTE(.);	/* End of code and read-only data   */
  } = 0

  /**** Initialised data ****/

  _zap2 = _etext_ram - _ftext_ram + _zap1 ;

  .data _etext_ram :
  AT( _zap2 )               /* (Load address is after "C" code in Monitor Flash.) */
  {
    _fdata_ram = ABSOLUTE(.);	/* Start of initialised data	    */
    *(.rodata)
    *(.rodata.*)
    *(.data)
    . = ALIGN(8);
    _gp = ABSOLUTE(. + 0x7ff0); /* Base of small data		    */
    *(.lit8)
    *(.lit4)
    *(.sdata)
    . = ALIGN(8);
    _edata_ram  = ABSOLUTE(.);	/* End of initialised data	    */
  }

  /**** Uninitialised data ****/

  _fbss = .;			/* Start of uninitialised data	    */

  .sbss :
  {
    *(.sbss)
    *(.scommon)
  }
  .bss :
  {
    *(.bss)
    *(COMMON)
  }

  _end = . ;		/* End of uninitialised data	    */

  .gptab.sdata : { *(.gptab.data) *(.gptab.sdata) }
  .gptab.sbss : { *(.gptab.bss) *(.gptab.sbss) }


  /DISCARD/ :
  {
    *(.reginfo)
    *(.MIPS.abiflags)
  }
  _freemem = .;
}
