# Trap handler in the standard MIPS32 kernel text segment
.ktext 0x80000180
done:
    mfc0  $k0, $14          # Bump EPC                  # 010000 00000 11010 01110 00000000 000 # ‭0x401A7000
    addiu $k0, $k0, 4       # Do not re-execute         # 001001 11010 11010 0000000000000100   # 0x‭275A0004‬
                            # faulting instruction
    mtc0  $k0, $14          # EPC                       # 010000 00100 11010 01110 00000000 000 # ‭0x409A7000
    
    mtc0  $0, $13           # Clear Cause register      # 010000 00100 00000 01101 00000000 000 # 0x‭40806800
    
    mfc0  $k0, $12          # Fix Status register       # 010000 00000 11010 01100 00000000 000 # 0x‭401A6000
    andi  $k0, $k0, 0xfffd  # Clear EXL bit             # 001100 11010 11010 1111111111111101   # 0x‭335AFFFD
    ori   $k0, $k0, 0x1     # Enable interrupts         # 001101 11010 11010 0000000000000001   # 0x‭375A0001
    mtc0  $k0, $12                                      # 010000 00100 11010 01100 00000000 000 # 0x‭409A6000
    
    eret                    # Return to EPC             # 010000 1 0000000000000000000 011000   # 0x42000018
