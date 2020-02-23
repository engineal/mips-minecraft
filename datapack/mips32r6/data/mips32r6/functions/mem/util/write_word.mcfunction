# Translate a 4 bit value into the block at mem_address
#
# Inputs:
# value mips32r6_mem

scoreboard players operation tmp_value mips32r6_mem = value mips32r6_mem

scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^28 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^24 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^20 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^16 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^12 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^8 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem /= 2^4 constants
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players operation value mips32r6_mem %= 2^4 constants
function mips32r6:mem/util/write_nibble

scoreboard players operation value mips32r6_mem = tmp_value mips32r6_mem
scoreboard players reset tmp_value mips32r6_mem
execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-7

execute if score debug mips32r6_mem matches 3.. run tellraw @p [{"text":"write word: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
