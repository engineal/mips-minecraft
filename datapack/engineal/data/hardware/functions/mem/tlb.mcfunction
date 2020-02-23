# Translate virtual memory address to physical memory address
#
# Inputs:
# address mem
#
# Outputs:
# paddr mem

execute if score address mem matches ..-1 run tellraw @p [{"text":"kernel mem access","color":"yellow"}]

scoreboard players operation paddr mem = address mem

# Unmapped addresses in kseg0 0x80000000-0x9FFFFFFF
# Strip off leading 3 bits to map to physical addresses 0x00000000-0x1FFFFFFF
execute if score address mem matches ..-1610612737 run scoreboard players operation paddr mem -= 2^31 constants

# Unmapped addresses in kseg1 0xA0000000-0xBFFFFFFF
# Strip off leading 3 bits to map to physical addresses 0x00000000-0x1FFFFFFF
execute if score address mem matches -1610612736..-1073741825 run scoreboard players add paddr mem 1610612736

# Mapped addresses in kseg2 0xC0000000-0xFFFFFFFF are not implemented
execute if score address mem matches -1073741824..-1 run tellraw @p [{"text":"kseg2 memory not implemented!","color":"red"}]

# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF are not implemented
execute if score address mem matches 0.. run tellraw @p [{"text":"kuseg memory not implemented!","color":"red"}]

execute if score debug mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mem"}},{"text":"] -> pmem["},{"score":{"name":"paddr","objective":"mem"}},{"text":"]"}]
