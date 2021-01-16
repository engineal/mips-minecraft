# Handle memory access from virtual address
#
# Inputs:
# address mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

# Translate virtual address to physical address
function mips32r6:mem/translate_address

# Perform memory access
scoreboard players set handled mips32r6_mem 0
function #mips32r6:mem

execute if score handled mips32r6_mem matches ..0 run tellraw @p [{"text":"Physical address ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":" not handled!","color":"red"}]
execute if score handled mips32r6_mem matches ..0 run scoreboard players set running mips32r6_tick 0
execute if score handled mips32r6_mem matches 1 unless score write mips32r6_mem matches 1 if score mem_level logging matches 1.. run tellraw @p [{"text":"VADDR["},{"score":{"name":"address","objective":"mips32r6_mem"}},{"text":"] -> "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
execute if score handled mips32r6_mem matches 1 if score write mips32r6_mem matches 1 if score mem_level logging matches 1.. run tellraw @p [{"text":"VADDR["},{"score":{"name":"address","objective":"mips32r6_mem"}},{"text":"] <- "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
execute if score handled mips32r6_mem matches 1 unless score write mips32r6_mem matches 1 if score mem_level logging matches 2.. run tellraw @p [{"text":"PADDR["},{"score":{"name":"physical_address","objective":"mips32r6_mem"}},{"text":"] -> "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
execute if score handled mips32r6_mem matches 1 if score write mips32r6_mem matches 1 if score mem_level logging matches 2.. run tellraw @p [{"text":"PADDR["},{"score":{"name":"physical_address","objective":"mips32r6_mem"}},{"text":"] <- "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
execute if score handled mips32r6_mem matches 2.. run tellraw @p [{"text":"Physical address ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":" handled ","color":"red"},{"score":{"name":"handled","objective":"mips32r6_mem"},"color":"red"},{"text":" times!","color":"red"}]
execute if score handled mips32r6_mem matches 2.. run scoreboard players set running mips32r6_tick 0
