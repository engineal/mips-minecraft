scoreboard players set passed test 0
scoreboard players set failed test 0

# Write address 0 of RAM (0xA0000000)
setblock 0 0 0 minecraft:orange_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610612736
scoreboard players set value mips32r6_mem 1
function mips32r6:mem/write
execute if blocks 0 0 0 0 0 7 0 0 16 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 0 16 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 0 16 all run tellraw @p [{"text":"Expected blocks: orange_wool and white_wool","color":"red"}]

# Write address 4 of RAM (0xA0000004)
setblock 0 0 0 minecraft:magenta_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610612732
scoreboard players set value mips32r6_mem 2
function mips32r6:mem/write
execute if blocks 0 0 0 0 0 7 0 1 16 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 1 16 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 1 16 all run tellraw @p [{"text":"Expected blocks: magenta_wool and white_wool","color":"red"}]

# Write address 1020 of RAM (0xA00003FC)
setblock 0 0 0 minecraft:light_blue_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610611716
scoreboard players set value mips32r6_mem 3
function mips32r6:mem/write
execute if blocks 0 0 0 0 0 7 0 255 16 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 255 16 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 255 16 all run tellraw @p [{"text":"Expected blocks: light_blue_wool and white_wool","color":"red"}]

# Write address 1024 of RAM (0xA0000400)
setblock 0 0 0 minecraft:yellow_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610611712
scoreboard players set value mips32r6_mem 4
function mips32r6:mem/write
execute if blocks 0 0 0 0 0 7 1 0 16 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 1 0 16 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 1 0 16 all run tellraw @p [{"text":"Expected blocks: yellow_wool and white_wool","color":"red"}]

# Write address 1028 of RAM (0xA0000404)
setblock 0 0 0 minecraft:lime_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610611708
scoreboard players set value mips32r6_mem 5
function mips32r6:mem/write
execute if blocks 0 0 0 0 0 7 1 1 16 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 1 1 16 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 1 1 16 all run tellraw @p [{"text":"Expected blocks: lime_wool and white_wool","color":"red"}]

# Write address 2044 of RAM (0xA00007FC)
setblock 0 0 0 minecraft:pink_wool
fill 0 0 1 0 0 7 minecraft:white_wool
scoreboard players set address mips32r6_mem -1610610692
scoreboard players set value mips32r6_mem 6
function mips32r6:mem/write
execute if blocks 0 0 0 0 0 7 1 255 16 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 1 255 16 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 1 255 16 all run tellraw @p [{"text":"Expected blocks: pink_wool and white_wool","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/write_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/write_test failed!","color":"red"}]
