# Translate virtual memory address to physical memory address
#
# Inputs:
# address mips32r6_mem
#
# Outputs:
# physical_address mips32r6_mem

# TODO: An Address Error will occur if kernel read

scoreboard players operation physical_address mips32r6_mem = address mips32r6_mem

# Unmapped addresses in kseg0 0x80000000-0x9FFFFFFF
# Strip off leading 3 bits to map to physical addresses 0x00000000-0x1FFFFFFF
execute if score address mips32r6_mem matches ..-1610612737 run scoreboard players operation physical_address mips32r6_mem -= 2^31 constants

# Unmapped addresses in kseg1 0xA0000000-0xBFFFFFFF
# Strip off leading 3 bits to map to physical addresses 0x00000000-0x1FFFFFFF
execute if score address mips32r6_mem matches -1610612736..-1073741825 run scoreboard players add physical_address mips32r6_mem 1610612736

# Mapped addresses in kseg2 0xC0000000-0xFFFFFFFF are not implemented
execute if score address mips32r6_mem matches -1073741824..-1 run tellraw @p [{"text":"kseg2 memory not implemented!","color":"red"}]
execute if score address mips32r6_mem matches -1073741824..-1 run scoreboard players set running mips32r6_tick 0

# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF are not implemented
execute if score address mips32r6_mem matches 0.. run tellraw @p [{"text":"kuseg memory not implemented!","color":"red"}]
execute if score address mips32r6_mem matches 0.. run scoreboard players set running mips32r6_tick 0

execute if score debug mips32r6_mem matches 2.. run tellraw @p [{"text":"virtual address: "},{"score":{"name":"address","objective":"mips32r6_mem"}},{"text":" -> physical address: "},{"score":{"name":"physical_address","objective":"mips32r6_mem"}}]
