scoreboard players set passed test 0
scoreboard players set failed test 0

# Read address 0 of ROM (0xBFC00000)
fill 0 0 0 0 0 6 minecraft:white_wool
setblock 0 0 7 minecraft:orange_wool
scoreboard players set address mips32r6_mem -1077936128
function mips32r6:mem/read
execute if score value mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Read address 4 of ROM (0xBFC00004)
fill 0 1 0 0 1 6 minecraft:white_wool
setblock 0 1 7 minecraft:magenta_wool
scoreboard players set address mips32r6_mem -1077936124
function mips32r6:mem/read
execute if score value mips32r6_mem matches 2 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 2 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Read address 1020 of ROM (0xBFC003FC)
fill 0 255 0 0 255 6 minecraft:white_wool
setblock 0 255 7 minecraft:light_blue_wool
scoreboard players set address mips32r6_mem -1077935108
function mips32r6:mem/read
execute if score value mips32r6_mem matches 3 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 3 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Read address 1024 of ROM (0xBFC00400)
fill 1 0 0 1 0 6 minecraft:white_wool
setblock 1 0 7 minecraft:yellow_wool
scoreboard players set address mips32r6_mem -1077935104
function mips32r6:mem/read
execute if score value mips32r6_mem matches 4 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 4 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Read address 1028 of ROM (0xBFC00404)
fill 1 1 0 1 1 6 minecraft:white_wool
setblock 1 1 7 minecraft:lime_wool
scoreboard players set address mips32r6_mem -1077935100
function mips32r6:mem/read
execute if score value mips32r6_mem matches 5 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 5 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

# Read address 2044 of ROM (0xBFC007FC)
fill 1 255 0 1 255 6 minecraft:white_wool
setblock 1 255 7 minecraft:pink_wool
scoreboard players set address mips32r6_mem -1077934084
function mips32r6:mem/read
execute if score value mips32r6_mem matches 6 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 6 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 6 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 6","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/read_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/read_test failed!","color":"red"}]
