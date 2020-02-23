# Translate the block at mem_address into 4 bit value
#
# Outputs:
# value mips32r6_mem

scoreboard players set value mips32r6_mem 0

execute at @e[name=mem_address] if block ~ ~ ~ minecraft:white_wool run scoreboard players add value mips32r6_mem 0
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:orange_wool run scoreboard players add value mips32r6_mem 1
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:magenta_wool run scoreboard players add value mips32r6_mem 2
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:light_blue_wool run scoreboard players add value mips32r6_mem 3
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:yellow_wool run scoreboard players add value mips32r6_mem 4
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:lime_wool run scoreboard players add value mips32r6_mem 5
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:pink_wool run scoreboard players add value mips32r6_mem 6
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:gray_wool run scoreboard players add value mips32r6_mem 7
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:light_gray_wool run scoreboard players add value mips32r6_mem 8
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:cyan_wool run scoreboard players add value mips32r6_mem 9
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:purple_wool run scoreboard players add value mips32r6_mem 10
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:blue_wool run scoreboard players add value mips32r6_mem 11
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:brown_wool run scoreboard players add value mips32r6_mem 12
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:green_wool run scoreboard players add value mips32r6_mem 13
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:red_wool run scoreboard players add value mips32r6_mem 14
execute at @e[name=mem_address] if block ~ ~ ~ minecraft:black_wool run scoreboard players add value mips32r6_mem 15

execute if score debug mips32r6_mem matches 4.. run tellraw @p [{"text":"read nibble: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
