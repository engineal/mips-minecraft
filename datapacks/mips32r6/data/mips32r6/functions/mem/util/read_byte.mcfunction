# Translate the 2 blocks starting at the current coordinates into a 8 bit value
#
# Outputs:
# value mips32r6_mem

scoreboard players set tmp_value mips32r6_mem 0

function mips32r6:mem/util/read_nibble
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute positioned ~ ~ ~1 run function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^4 constants
scoreboard players operation value mips32r6_mem += tmp_value mips32r6_mem

scoreboard players reset tmp_value mips32r6_mem

execute if score mem_level logging matches 3.. run tellraw @p [{"text":"read byte: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
