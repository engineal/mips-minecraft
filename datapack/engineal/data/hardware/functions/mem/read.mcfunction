function hardware:mem/select
scoreboard players set value mem 0
scoreboard players set tmp_value mem 0

function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^28 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^24 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^20 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^16 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^12 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^8 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem *= 2^4 constants
scoreboard players operation tmp_value mem += value mem

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~1
function hardware:mem/read_nibble
scoreboard players operation value mem += tmp_value mem

scoreboard players reset tmp_value mem
kill @e[name=mem_address]

execute if score debug mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mem"}},{"text":"]>"},{"score":{"name":"value","objective":"mem"}}]
