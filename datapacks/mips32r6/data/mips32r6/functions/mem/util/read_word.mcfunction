# Translate the 8 blocks starting at the current coordinates into a 32 bit value
#
# Outputs:
# value mips32r6_mem

scoreboard players set tmp_value mips32r6_mem 0

function mips32r6:mem/util/read_nibble
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~1 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^4 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~2 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^8 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~3 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^12 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~4 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^16 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~5 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^20 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~6 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^24 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~7 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^28 constants
scoreboard players operation value mips32r6_mem += tmp_value mips32r6_mem

scoreboard players reset tmp_value mips32r6_mem

execute if score mem_level logging matches 3.. run tellraw @p [{"text":"read word: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
