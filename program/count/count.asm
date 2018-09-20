# This sample program increments address 127 from 0 to 10,
# and prints the value to the display

main: li   $t1, 0             # temp var counter for loop
      li   $t2, 10            # exit condition
      li   $v0, 1             # syscall is print_int
Loop: beq  $t2, $t1, Exit     # at 10 we go to Exit, defined below
      addi $t1, $t1, 1        # increment counter
      sw   $t1, 127($zero)    # store counter in memory
      add  $a0, $t1, $zero    # print counter
      syscall
      j Loop                  # jumps back to the top of loop
Exit: li   $v0, 10            # exit
      syscall
