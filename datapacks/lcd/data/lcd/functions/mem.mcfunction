# LCD memory hook
#
# Physical addresses 0x1F000400-0x1F00041F
# Unmapped cached (kseg0) virtual addresses 0x9F000400-0x9F00041F
# Unmapped uncached (kseg1) virtual addresses 0xBF000400-0xBF00041F
#
# Inputs:
# physical_address mips32r6_mem
# length mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

execute if score physical_address mips32r6_mem matches 520094720..520094751 run function lcd:handle_mem
