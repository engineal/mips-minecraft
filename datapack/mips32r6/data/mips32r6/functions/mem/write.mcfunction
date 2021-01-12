# Write to virtual address
#
# Inputs:
# address mips32r6_mem
# value mips32r6_mem

# Translate virtual address to physical address
function mips32r6:mem/tlb

# Perform write
scoreboard players set handled mips32r6_mem 0
function #mips32r6:write

execute if score handled mips32r6_mem matches ..0 run tellraw @p [{"text":"Physical address ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":" not handled!","color":"red"}]
execute if score handled mips32r6_mem matches ..0 run scoreboard players set running mips32r6_tick 0
execute if score handled mips32r6_mem matches 1 if score debug mips32r6_mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mips32r6_mem"}},{"text":"]<"},{"score":{"name":"value","objective":"mips32r6_mem"}}]
execute if score handled mips32r6_mem matches 2.. run tellraw @p [{"text":"Physical address ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":" handled ","color":"red"},{"score":{"name":"handled","objective":"mips32r6_mem"},"color":"red"},{"text":" times!","color":"red"}]
execute if score handled mips32r6_mem matches 2.. run scoreboard players set running mips32r6_tick 0
