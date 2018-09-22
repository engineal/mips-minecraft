# Trap handler in the standard MIPS32 kernel text segment
.ktext 0x80000180
    mfc0  $k0, $14      # Bump EPC                  # 010000 00000 11010 01110 00000000 000 # ‭0x401A7000
    addiu $k0, $k0, 4   # Do not re-execute         # 001001 11010 11010 0000000000000100   # 0x‭275A0004‬
                        # faulting instruction
    mtc0  $k0, $14      # EPC                       # 010000 00100 11010 01110 00000000 000 # ‭0x409A7000
    
    mtc0  $0, $13       # Clear Cause register      # 010000 00100 00000 01101 00000000 000 # 0x‭40806800
    
    eret                # Return to EPC             # 010000 1 0000000000000000000 011000   # 0x42000018
