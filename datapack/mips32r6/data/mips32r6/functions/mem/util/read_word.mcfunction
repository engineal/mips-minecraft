# Translate the 8 blocks starting at mem_address into a 32 bit value
#
# Outputs:
# value mips32r6_mem

scoreboard players set tmp_value mips32r6_mem 0

function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^28 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^24 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^20 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^16 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^12 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^8 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem *= 2^4 constants
scoreboard players operation tmp_value mips32r6_mem += value mips32r6_mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function mips32r6:mem/util/read_nibble
scoreboard players operation value mips32r6_mem += tmp_value mips32r6_mem

scoreboard players reset tmp_value mips32r6_mem
execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-7

execute if score debug mips32r6_mem matches 3.. run tellraw @p [{"text":"read word: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
