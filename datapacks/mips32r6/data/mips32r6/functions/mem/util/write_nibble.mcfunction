# Translate a 4 bit value into the block at the current coordinates
#
# Inputs:
# value mips32r6_mem

execute if score value mips32r6_mem matches 0 run setblock ~ ~ ~ minecraft:white_wool
execute if score value mips32r6_mem matches 1 run setblock ~ ~ ~ minecraft:orange_wool
execute if score value mips32r6_mem matches 2 run setblock ~ ~ ~ minecraft:magenta_wool
execute if score value mips32r6_mem matches 3 run setblock ~ ~ ~ minecraft:light_blue_wool
execute if score value mips32r6_mem matches 4 run setblock ~ ~ ~ minecraft:yellow_wool
execute if score value mips32r6_mem matches 5 run setblock ~ ~ ~ minecraft:lime_wool
execute if score value mips32r6_mem matches 6 run setblock ~ ~ ~ minecraft:pink_wool
execute if score value mips32r6_mem matches 7 run setblock ~ ~ ~ minecraft:gray_wool
execute if score value mips32r6_mem matches 8 run setblock ~ ~ ~ minecraft:light_gray_wool
execute if score value mips32r6_mem matches 9 run setblock ~ ~ ~ minecraft:cyan_wool
execute if score value mips32r6_mem matches 10 run setblock ~ ~ ~ minecraft:purple_wool
execute if score value mips32r6_mem matches 11 run setblock ~ ~ ~ minecraft:blue_wool
execute if score value mips32r6_mem matches 12 run setblock ~ ~ ~ minecraft:brown_wool
execute if score value mips32r6_mem matches 13 run setblock ~ ~ ~ minecraft:green_wool
execute if score value mips32r6_mem matches 14 run setblock ~ ~ ~ minecraft:red_wool
execute if score value mips32r6_mem matches 15 run setblock ~ ~ ~ minecraft:black_wool

execute if score debug mips32r6_mem matches 4.. run tellraw @p [{"text":"write nibble: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
