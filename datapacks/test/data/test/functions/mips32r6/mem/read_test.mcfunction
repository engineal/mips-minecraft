scoreboard players set passed test 0
scoreboard players set failed test 0

scoreboard players set write mips32r6_mem 0

# Read address 0 of RAM (0xA0000000)
setblock 0 0 16 minecraft:orange_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610612736
function mips32r6:mem
execute if score value mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Read address 4 of RAM (0xA0000004)
setblock 0 1 16 minecraft:magenta_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610612732
function mips32r6:mem
execute if score value mips32r6_mem matches 2 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 2 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Read address 1020 of RAM (0xA00003FC)
setblock 0 255 16 minecraft:light_blue_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610611716
function mips32r6:mem
execute if score value mips32r6_mem matches 3 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 3 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Read address 1024 of RAM (0xA0000400)
setblock 1 0 16 minecraft:yellow_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610611712
function mips32r6:mem
execute if score value mips32r6_mem matches 4 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 4 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Read address 1028 of RAM (0xA0000404)
setblock 1 1 16 minecraft:lime_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610611708
function mips32r6:mem
execute if score value mips32r6_mem matches 5 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 5 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

# Read address 2044 of RAM (0xA00007FC)
setblock 1 255 16 minecraft:pink_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610610692
function mips32r6:mem
execute if score value mips32r6_mem matches 6 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 6 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 6 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 6","color":"red"}]

# Read address 0 of ROM (0xBFC00000)
setblock 0 0 0 minecraft:gray_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1077936128
function mips32r6:mem
execute if score value mips32r6_mem matches 7 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 7 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 7 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 7","color":"red"}]

# Read address 4 of ROM (0xBFC00004)
setblock 0 1 0 minecraft:light_gray_wool
fill 0 1 1 0 1 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1077936124
function mips32r6:mem
execute if score value mips32r6_mem matches 8 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 8 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 8 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 8","color":"red"}]

# Read address 1020 of ROM (0xBFC003FC)
setblock 0 255 0 minecraft:cyan_wool
fill 0 255 1 0 255 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1077935108
function mips32r6:mem
execute if score value mips32r6_mem matches 9 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 9 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 9 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 9","color":"red"}]

# Read address 1024 of ROM (0xBFC00400)
setblock 1 0 0 minecraft:purple_wool
fill 1 0 1 1 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1077935104
function mips32r6:mem
execute if score value mips32r6_mem matches 10 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 10 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 10 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 10","color":"red"}]

# Read address 1028 of ROM (0xBFC00404)
setblock 1 1 0 minecraft:blue_wool
fill 1 1 1 1 1 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1077935100
function mips32r6:mem
execute if score value mips32r6_mem matches 11 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 11 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 11 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 11","color":"red"}]

# Read address 2044 of ROM (0xBFC007FC)
setblock 1 255 0 minecraft:brown_wool
fill 1 255 1 1 255 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1077934084
function mips32r6:mem
execute if score value mips32r6_mem matches 12 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 12 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 12 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 12","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/read_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/read_test failed!","color":"red"}]
