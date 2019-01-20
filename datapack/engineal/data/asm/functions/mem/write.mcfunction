function asm:mem/select
scoreboard players operation tmp_value mem = value mem
scoreboard players set carry mem 0
execute if score value mem matches ..-1 run scoreboard players set carry mem 1

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~7
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^4 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^8 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^12 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^16 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^20 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^24 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

execute at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~-1
scoreboard players operation value mem = tmp_value mem
scoreboard players operation value mem /= 2^28 constants
scoreboard players operation value mem %= 2^4 constants
function asm:mem/write_nibble

scoreboard players operation value mem = tmp_value mem
scoreboard players reset tmp_value mem
scoreboard players reset carry mem
kill @e[name=mem_address]

execute if score debug mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mem"}},{"text":"]<-"},{"score":{"name":"value","objective":"mem"}}]
