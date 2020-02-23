# ROM read handler
#
# Physical addresses 0x1FC00000-0x1FFFFFFF
# Unmapped cached (kseg0) virtual addresses 0x9FC00000-0x9FFFFFFF
# Unmapped uncached (kseg1) virtual addresses 0xBFC00000-0xBFFFFFFF
#
# Inputs:
# physical_address mips32r6_mem
#
# Outputs:
# value mips32r6_mem

execute if score physical_address mips32r6_mem matches 532676608..536870911 run scoreboard players operation device_address rom = physical_address mips32r6_mem
execute if score physical_address mips32r6_mem matches 532676608..536870911 run scoreboard players remove device_address rom 532676608
execute if score physical_address mips32r6_mem matches 532676608..536870911 run function rom:do_read
