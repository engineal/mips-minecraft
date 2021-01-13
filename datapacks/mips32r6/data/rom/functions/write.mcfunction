# ROM write handler
#
# Physical addresses 0x1FC00000-0x1FFFFFFF
# Unmapped cached (kseg0) virtual addresses 0x9FC00000-0x9FFFFFFF
# Unmapped uncached (kseg1) virtual addresses 0xBFC00000-0xBFFFFFFF
#
# Inputs:
# physical_address mips32r6_mem
# value mips32r6_mem

execute if score physical_address mips32r6_mem matches 532676608..536870911 run tellraw @p [{"text":"ROM is readonly!","color":"red"}]
execute if score physical_address mips32r6_mem matches 532676608..536870911 run scoreboard players set running mips32r6_tick 0
execute if score physical_address mips32r6_mem matches 532676608..536870911 run scoreboard players add handled mips32r6_mem 1
