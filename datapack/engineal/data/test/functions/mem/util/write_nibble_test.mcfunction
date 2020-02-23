scoreboard players set passed test 0
scoreboard players set failed test 0
summon minecraft:armor_stand 0 0 0 {CustomName:"\"mem_address\"",NoGravity:true}

# Test writing 0
scoreboard players set value mem 0
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:white_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:white_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:white_wool run tellraw @p [{"text":"Expected block: white_wool","color":"red"}]

# Test writing 1
scoreboard players set value mem 1
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:orange_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:orange_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:orange_wool run tellraw @p [{"text":"Expected block: orange_wool","color":"red"}]

# Test writing 2
scoreboard players set value mem 2
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:magenta_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:magenta_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:magenta_wool run tellraw @p [{"text":"Expected block: magenta_wool","color":"red"}]

# Test writing 3
scoreboard players set value mem 3
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:light_blue_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:light_blue_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:light_blue_wool run tellraw @p [{"text":"Expected block: light_blue_wool","color":"red"}]

# Test writing 4
scoreboard players set value mem 4
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:yellow_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:yellow_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:yellow_wool run tellraw @p [{"text":"Expected block: yellow_wool","color":"red"}]

# Test writing 5
scoreboard players set value mem 5
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:lime_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:lime_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:lime_wool run tellraw @p [{"text":"Expected block: lime_wool","color":"red"}]

# Test writing 6
scoreboard players set value mem 6
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:pink_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:pink_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:pink_wool run tellraw @p [{"text":"Expected block: pink_wool","color":"red"}]

# Test writing 7
scoreboard players set value mem 7
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:gray_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:gray_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:gray_wool run tellraw @p [{"text":"Expected block: gray_wool","color":"red"}]

# Test writing 8
scoreboard players set value mem 8
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:light_gray_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:light_gray_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:light_gray_wool run tellraw @p [{"text":"Expected block: light_gray_wool","color":"red"}]

# Test writing 9
scoreboard players set value mem 9
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:cyan_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:cyan_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:cyan_wool run tellraw @p [{"text":"Expected block: cyan_wool","color":"red"}]

# Test writing 10
scoreboard players set value mem 10
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:purple_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:purple_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:purple_wool run tellraw @p [{"text":"Expected block: purple_wool","color":"red"}]

# Test writing 11
scoreboard players set value mem 11
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:blue_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:blue_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:blue_wool run tellraw @p [{"text":"Expected block: blue_wool","color":"red"}]

# Test writing 12
scoreboard players set value mem 12
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:brown_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:brown_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:brown_wool run tellraw @p [{"text":"Expected block: brown_wool","color":"red"}]

# Test writing 13
scoreboard players set value mem 13
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:green_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:green_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:green_wool run tellraw @p [{"text":"Expected block: green_wool","color":"red"}]

# Test writing 14
scoreboard players set value mem 14
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:red_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:red_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:red_wool run tellraw @p [{"text":"Expected block: red_wool","color":"red"}]

# Test writing 15
scoreboard players set value mem 15
function hardware:mem/util/write_nibble
execute if block 0 0 0 minecraft:black_wool run scoreboard players add passed test 1
execute unless block 0 0 0 minecraft:black_wool run scoreboard players add failed test 1
execute unless block 0 0 0 minecraft:black_wool run tellraw @p [{"text":"Expected block: black_wool","color":"red"}]

kill @e[name=mem_address]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in write_nibble_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in write_nibble_test failed!","color":"red"}]
