# Translate the 8 blocks starting at mem_address into a 32 bit value
#
# Outputs:
# value mem

scoreboard players set tmp_value mem 0

function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^28 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^24 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^20 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^16 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^12 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^8 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem *= 2^4 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/util/read_nibble
scoreboard players operation value mem += tmp_value mem

scoreboard players reset tmp_value mem
execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-7

execute if score debug mem matches 3.. run tellraw @p [{"text":"read word: "},{"score":{"name":"value","objective":"mem"}}]
