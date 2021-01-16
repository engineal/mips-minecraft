scoreboard players set passed test 0
scoreboard players set failed test 0

scoreboard players set write mips32r6_mem 0

# Read address 0 of RAM (0x00000000)
setblock 0 0 16 minecraft:orange_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 0
function ram:mem
execute if score value mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Read address 4 of RAM (0x00000004)
setblock 0 1 16 minecraft:magenta_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 4
function ram:mem
execute if score value mips32r6_mem matches 2 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 2 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Read address 1020 of RAM (0x000003FC)
setblock 0 255 16 minecraft:light_blue_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 1020
function ram:mem
execute if score value mips32r6_mem matches 3 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 3 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Read address 1024 of RAM (0x00000400)
setblock 1 0 16 minecraft:yellow_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 1024
function ram:mem
execute if score value mips32r6_mem matches 4 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 4 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Read address 1028 of RAM (0x00000404)
setblock 1 1 16 minecraft:lime_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 1028
function ram:mem
execute if score value mips32r6_mem matches 5 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 5 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

# Read address 2044 of RAM (0x000007FC)
setblock 1 255 16 minecraft:pink_wool
fill 0 0 17 0 0 23 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 2044
function ram:mem
execute if score value mips32r6_mem matches 6 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 6 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 6 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 6","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:ram/read_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:ram/read_test failed!","color":"red"}]
