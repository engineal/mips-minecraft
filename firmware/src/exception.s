# Trap handler in the standard MIPS32 kernel text segment

.text 0x80000180
    move  $k1, $at          # Save $at register
    sw    $a0, save0        # Handler is not re-entrant and can't use
    sw    $a1, save1        # stack to save $a0, $a1
                            # Don't need to save $k0/k1

    mfc0  $k0, $13          # Move Cause into $k0
 
    srl   $a0, $k0, 2       # Extract ExcCode field
    andi  $a0, $a0, 0xf

    bgtz  $a0, done         # Branch if ExcCode is Int (0)

    move  $a0, $k0          # Move Cause into $a0
    mfc0  $a1, $14          # Move EPC into $a1
    jal   print_excp        # Print exception error message

done:
    mfc0  $k0, $14          # Bump EPC
    addiu $k0, $k0, 4       # Do not re-execute
                            # faulting instruction
    mtc0  $k0, $14          # EPC
 
    mtc0  $0, $13           # Clear Cause register
 
    mfc0  $k0, $12          # Fix Status register
    andi  $k0, $k0, 0xfffd  # Clear EXL bit
    ori   $k0, $k0, 0x1     # Enable interrupts
    mtc0  $k0, $12

    lw    $a0, save0        # Restore registers
    lw    $a1, save1
    move  $at, $k1

    eret                    # Return to EPC

print_excp:
    jr $ra                  # Return

.data
save0: .word 0
save1: .word 0

