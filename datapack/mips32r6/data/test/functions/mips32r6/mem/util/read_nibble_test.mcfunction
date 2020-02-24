scoreboard players set passed test 0
scoreboard players set failed test 0

# Test reading 0
setblock 0 0 0 minecraft:white_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 0 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 0 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Test reading 1
setblock 0 0 0 minecraft:orange_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Test reading 2
setblock 0 0 0 minecraft:magenta_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 2 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 2 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Test reading 3
setblock 0 0 0 minecraft:light_blue_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 3 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 3 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Test reading 4
setblock 0 0 0 minecraft:yellow_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 4 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 4 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Test reading 5
setblock 0 0 0 minecraft:lime_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 5 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 5 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

# Test reading 6
setblock 0 0 0 minecraft:pink_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 6 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 6 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 6 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 6","color":"red"}]

# Test reading 7
setblock 0 0 0 minecraft:gray_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 7 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 7 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 7 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 7","color":"red"}]

# Test reading 8
setblock 0 0 0 minecraft:light_gray_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 8 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 8 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 8 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 8","color":"red"}]

# Test reading 9
setblock 0 0 0 minecraft:cyan_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 9 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 9 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 9 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 9","color":"red"}]

# Test reading 10
setblock 0 0 0 minecraft:purple_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 10 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 10 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 10 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 10","color":"red"}]

# Test reading 11
setblock 0 0 0 minecraft:blue_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 11 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 11 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 11 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 11","color":"red"}]

# Test reading 12
setblock 0 0 0 minecraft:brown_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 12 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 12 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 12 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 12","color":"red"}]

# Test reading 13
setblock 0 0 0 minecraft:green_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 13 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 13 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 13 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 13","color":"red"}]

# Test reading 14
setblock 0 0 0 minecraft:red_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 14 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 14 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 14 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 14","color":"red"}]

# Test reading 15
setblock 0 0 0 minecraft:black_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_nibble
execute if score value mips32r6_mem matches 15 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 15 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 15 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 15","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/util/read_nibble_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/util/read_nibble_test failed!","color":"red"}]
