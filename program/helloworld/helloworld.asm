# This program prints Hello world! to the screen

.text
main: la   $a0, msg  # Load address of msg
      li   $v0, 4    # syscall is print_string
      syscall
      li   $v0, 10   # exit
      syscall

.data
msg:  .asciiz "Hello world!"
