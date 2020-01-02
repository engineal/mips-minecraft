#set values in memory
setblock 0 0 0 minecraft:white_wool
setblock 0 0 1 minecraft:white_wool
setblock 0 0 2 minecraft:white_wool
setblock 0 0 3 minecraft:yellow_wool
setblock 0 0 4 minecraft:lime_wool
setblock 0 0 5 minecraft:lime_wool
setblock 0 0 6 minecraft:white_wool
setblock 0 0 7 minecraft:black_wool
setblock 0 1 0 minecraft:black_wool
setblock 0 1 1 minecraft:black_wool

scoreboard players set address mem 0
function hardware:mem/read_byte

execute if score value mem matches 0 run tellraw @p {"text":"read byte test passed!","color":"green"}
execute unless score value mem matches 0 run tellraw @p {"text":"read byte test failed!","color":"red"}

scoreboard players set address mem 1
function hardware:mem/read_byte

execute if score value mem matches 4 run tellraw @p {"text":"read byte test passed!","color":"green"}
execute unless score value mem matches 4 run tellraw @p {"text":"read byte test failed!","color":"red"}

scoreboard players set address mem 2
function hardware:mem/read_byte

execute if score value mem matches 85 run tellraw @p {"text":"read byte test passed!","color":"green"}
execute unless score value mem matches 85 run tellraw @p {"text":"read byte test failed!","color":"red"}

scoreboard players set address mem 3
function hardware:mem/read_byte

execute if score value mem matches 15 run tellraw @p {"text":"read byte test passed!","color":"green"}
execute unless score value mem matches 15 run tellraw @p {"text":"read byte test failed!","color":"red"}

scoreboard players set address mem 4
function hardware:mem/read_byte

execute if score value mem matches 255 run tellraw @p {"text":"read byte test passed!","color":"green"}
execute unless score value mem matches 255 run tellraw @p {"text":"read byte test failed!","color":"red"}
