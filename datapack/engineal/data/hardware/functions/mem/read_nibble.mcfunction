scoreboard players set value mem 0

execute at @e[name=mem_address] if block ~ ~ ~ minecraft:white_wool run scoreboard players add value mem 0
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:orange_wool run scoreboard players add value mem 1
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:magenta_wool run scoreboard players add value mem 2
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:light_blue_wool run scoreboard players add value mem 3
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:yellow_wool run scoreboard players add value mem 4
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:lime_wool run scoreboard players add value mem 5
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:pink_wool run scoreboard players add value mem 6
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:gray_wool run scoreboard players add value mem 7
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:light_gray_wool run scoreboard players add value mem 8
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:cyan_wool run scoreboard players add value mem 9
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:purple_wool run scoreboard players add value mem 10
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:blue_wool run scoreboard players add value mem 11
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:brown_wool run scoreboard players add value mem 12
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:green_wool run scoreboard players add value mem 13
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:red_wool run scoreboard players add value mem 14
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:black_wool run scoreboard players add value mem 15

execute if score debug mem matches 2.. run tellraw @p [{"text":"read nibble: "},{"score":{"name":"value","objective":"mem"}}]
