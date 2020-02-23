scoreboard players set passed test 0
scoreboard players set failed test 0

# Read address 0 of ROM
fill 0 0 0 0 0 6 minecraft:white_wool
setblock 0 0 7 minecraft:orange_wool
scoreboard players set device_address mem 0
function hardware:mem/rom/read
execute if score value mem matches 1 run scoreboard players add passed test 1
execute unless score value mem matches 1 run scoreboard players add failed test 1
execute unless score value mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Read address 4 of ROM
fill 0 1 0 0 1 6 minecraft:white_wool
setblock 0 1 7 minecraft:magenta_wool
scoreboard players set device_address mem 4
function hardware:mem/rom/read
execute if score value mem matches 2 run scoreboard players add passed test 1
execute unless score value mem matches 2 run scoreboard players add failed test 1
execute unless score value mem matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mem"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Read address 1020 of ROM
fill 0 255 0 0 255 6 minecraft:white_wool
setblock 0 255 7 minecraft:light_blue_wool
scoreboard players set device_address mem 1020
function hardware:mem/rom/read
execute if score value mem matches 3 run scoreboard players add passed test 1
execute unless score value mem matches 3 run scoreboard players add failed test 1
execute unless score value mem matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mem"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Read address 1024 of ROM
fill 1 0 0 1 0 6 minecraft:white_wool
setblock 1 0 7 minecraft:yellow_wool
scoreboard players set device_address mem 1024
function hardware:mem/rom/read
execute if score value mem matches 4 run scoreboard players add passed test 1
execute unless score value mem matches 4 run scoreboard players add failed test 1
execute unless score value mem matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mem"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Read address 1028 of ROM
fill 1 1 0 1 1 6 minecraft:white_wool
setblock 1 1 7 minecraft:lime_wool
scoreboard players set device_address mem 1028
function hardware:mem/rom/read
execute if score value mem matches 5 run scoreboard players add passed test 1
execute unless score value mem matches 5 run scoreboard players add failed test 1
execute unless score value mem matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mem"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

# Read address 2044 of ROM
fill 1 255 0 1 255 6 minecraft:white_wool
setblock 1 255 7 minecraft:pink_wool
scoreboard players set device_address mem 2044
function hardware:mem/rom/read
execute if score value mem matches 6 run scoreboard players add passed test 1
execute unless score value mem matches 6 run scoreboard players add failed test 1
execute unless score value mem matches 6 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mem"},"color":"red"},{"text":", Expected value: 6","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mem/rom/read_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mem/rom/read_test failed!","color":"red"}]
