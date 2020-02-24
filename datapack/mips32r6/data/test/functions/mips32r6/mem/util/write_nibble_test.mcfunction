scoreboard players set passed test 0
scoreboard players set failed test 0

# Test writing 0
scoreboard players set value mips32r6_mem 0
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:white_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:white_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:white_wool run tellraw @p [{"text":"Expected block: white_wool","color":"red"}]

# Test writing 1
scoreboard players set value mips32r6_mem 1
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:orange_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:orange_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:orange_wool run tellraw @p [{"text":"Expected block: orange_wool","color":"red"}]

# Test writing 2
scoreboard players set value mips32r6_mem 2
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:magenta_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:magenta_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:magenta_wool run tellraw @p [{"text":"Expected block: magenta_wool","color":"red"}]

# Test writing 3
scoreboard players set value mips32r6_mem 3
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:light_blue_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:light_blue_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:light_blue_wool run tellraw @p [{"text":"Expected block: light_blue_wool","color":"red"}]

# Test writing 4
scoreboard players set value mips32r6_mem 4
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:yellow_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:yellow_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:yellow_wool run tellraw @p [{"text":"Expected block: yellow_wool","color":"red"}]

# Test writing 5
scoreboard players set value mips32r6_mem 5
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:lime_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:lime_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:lime_wool run tellraw @p [{"text":"Expected block: lime_wool","color":"red"}]

# Test writing 6
scoreboard players set value mips32r6_mem 6
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:pink_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:pink_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:pink_wool run tellraw @p [{"text":"Expected block: pink_wool","color":"red"}]

# Test writing 7
scoreboard players set value mips32r6_mem 7
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:gray_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:gray_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:gray_wool run tellraw @p [{"text":"Expected block: gray_wool","color":"red"}]

# Test writing 8
scoreboard players set value mips32r6_mem 8
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:light_gray_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:light_gray_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:light_gray_wool run tellraw @p [{"text":"Expected block: light_gray_wool","color":"red"}]

# Test writing 9
scoreboard players set value mips32r6_mem 9
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:cyan_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:cyan_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:cyan_wool run tellraw @p [{"text":"Expected block: cyan_wool","color":"red"}]

# Test writing 10
scoreboard players set value mips32r6_mem 10
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:purple_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:purple_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:purple_wool run tellraw @p [{"text":"Expected block: purple_wool","color":"red"}]

# Test writing 11
scoreboard players set value mips32r6_mem 11
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:blue_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:blue_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:blue_wool run tellraw @p [{"text":"Expected block: blue_wool","color":"red"}]

# Test writing 12
scoreboard players set value mips32r6_mem 12
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:brown_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:brown_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:brown_wool run tellraw @p [{"text":"Expected block: brown_wool","color":"red"}]

# Test writing 13
scoreboard players set value mips32r6_mem 13
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:green_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:green_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:green_wool run tellraw @p [{"text":"Expected block: green_wool","color":"red"}]

# Test writing 14
scoreboard players set value mips32r6_mem 14
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:red_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:red_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:red_wool run tellraw @p [{"text":"Expected block: red_wool","color":"red"}]

# Test writing 15
scoreboard players set value mips32r6_mem 15
execute positioned 0 0 0 run function mips32r6:mem/util/write_nibble
execute if block 0 0 0 minecraft:black_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:black_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:black_wool run tellraw @p [{"text":"Expected block: black_wool","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/util/write_nibble_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/util/write_nibble_test failed!","color":"red"}]
