# ROM memory hook
#
# Physical addresses 0x1FC00000-0x1FC3FFFF
# Unmapped cached (kseg0) virtual addresses 0x9FC00000-0x9FC3FFFF
# Unmapped uncached (kseg1) virtual addresses 0xBFC00000-0xBFC3FFFF
#
# Inputs:
# physical_address mips32r6_mem
# length mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

execute if score physical_address mips32r6_mem matches 532676608..532938751 run function rom:handle_mem
