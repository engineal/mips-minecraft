execute if score carry mem matches 1 run scoreboard players add value mem 1
scoreboard players set carry mem 0
execute if score value mem matches 16.. run scoreboard players set carry mem 1
execute if score value mem matches 16.. run scoreboard players remove value mem 16

execute at @e[name=mem_address] if score value mem matches 0 run setblock ~ ~ ~ minecraft:white_wool
execute at @e[name=mem_address] if score value mem matches 1 run setblock ~ ~ ~ minecraft:orange_wool
execute at @e[name=mem_address] if score value mem matches 2 run setblock ~ ~ ~ minecraft:magenta_wool
execute at @e[name=mem_address] if score value mem matches 3 run setblock ~ ~ ~ minecraft:light_blue_wool
execute at @e[name=mem_address] if score value mem matches 4 run setblock ~ ~ ~ minecraft:yellow_wool
execute at @e[name=mem_address] if score value mem matches 5 run setblock ~ ~ ~ minecraft:lime_wool
execute at @e[name=mem_address] if score value mem matches 6 run setblock ~ ~ ~ minecraft:pink_wool
execute at @e[name=mem_address] if score value mem matches 7 run setblock ~ ~ ~ minecraft:gray_wool
execute at @e[name=mem_address] if score value mem matches 8 run setblock ~ ~ ~ minecraft:light_gray_wool
execute at @e[name=mem_address] if score value mem matches 9 run setblock ~ ~ ~ minecraft:cyan_wool
execute at @e[name=mem_address] if score value mem matches 10 run setblock ~ ~ ~ minecraft:purple_wool
execute at @e[name=mem_address] if score value mem matches 11 run setblock ~ ~ ~ minecraft:blue_wool
execute at @e[name=mem_address] if score value mem matches 12 run setblock ~ ~ ~ minecraft:brown_wool
execute at @e[name=mem_address] if score value mem matches 13 run setblock ~ ~ ~ minecraft:green_wool
execute at @e[name=mem_address] if score value mem matches 14 run setblock ~ ~ ~ minecraft:red_wool
execute at @e[name=mem_address] if score value mem matches 15 run setblock ~ ~ ~ minecraft:black_wool

execute if score debug mem matches 2.. run tellraw @p [{"text":"write nibble: "},{"score":{"name":"value","objective":"mem"}}]
