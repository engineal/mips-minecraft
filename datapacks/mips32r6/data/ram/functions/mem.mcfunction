# RAM memory hook
#
# Physical addresses 0x00000000-0x001FFFFF
# Unmapped cached (kseg0) virtual addresses 0x80000000-0x801FFFFF
# Unmapped uncached (kseg1) virtual addresses 0xA0000000-0xA01FFFFF
#
# Inputs:
# physical_address mips32r6_mem
# length mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

execute if score physical_address mips32r6_mem matches 0..2097151 run function ram:handle_mem
