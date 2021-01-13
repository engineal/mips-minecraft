scoreboard players set passed test 0
scoreboard players set failed test 0

# Read address 0 of ROM (0x1FC00000)
setblock 0 0 0 minecraft:orange_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 532676608
function rom:read
execute if score value mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Read address 4 of ROM (0x1FC00004)
setblock 0 1 0 minecraft:magenta_wool
fill 0 1 1 0 1 7 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 532676612
function rom:read
execute if score value mips32r6_mem matches 2 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 2 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Read address 1020 of ROM (0x1FC003FC)
setblock 0 255 0 minecraft:light_blue_wool
fill 0 255 1 0 255 7 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 532677628
function rom:read
execute if score value mips32r6_mem matches 3 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 3 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Read address 1024 of ROM (0x1FC00400)
setblock 1 0 0 minecraft:yellow_wool
fill 1 0 1 1 0 7 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 532677632
function rom:read
execute if score value mips32r6_mem matches 4 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 4 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Read address 1028 of ROM (0x1FC00404)
setblock 1 1 0 minecraft:lime_wool
fill 1 1 1 1 1 7 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 532677636
function rom:read
execute if score value mips32r6_mem matches 5 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 5 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

# Read address 2044 of ROM (0x1FC007FC)
setblock 1 255 0 minecraft:pink_wool
fill 1 255 1 1 255 7 minecraft:white_wool
scoreboard players set physical_address mips32r6_mem 532678652
function rom:read
execute if score value mips32r6_mem matches 6 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 6 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 6 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 6","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:rom/read_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:rom/read_test failed!","color":"red"}]
