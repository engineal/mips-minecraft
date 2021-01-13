scoreboard players set passed test 0
scoreboard players set failed test 0

# Test writing -2147483648
fill 0 1 0 0 1 6 minecraft:white_wool
setblock 0 1 7 minecraft:light_gray_wool
scoreboard players set value mips32r6_mem -2147483648
execute positioned 0 0 0 run function mips32r6:mem/util/write_word
execute if blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run tellraw @p [{"text":"Expected blocks: light_gray_wool and white_wool","color":"red"}]

# Test writing -1
fill 0 1 0 0 1 7 minecraft:black_wool
scoreboard players set value mips32r6_mem -1
execute positioned 0 0 0 run function mips32r6:mem/util/write_word
execute if blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run tellraw @p [{"text":"Expected blocks: black_wool","color":"red"}]

# Test writing 0
fill 0 1 0 0 1 7 minecraft:white_wool
scoreboard players set value mips32r6_mem 0
execute positioned 0 0 0 run function mips32r6:mem/util/write_word
execute if blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run tellraw @p [{"text":"Expected blocks: white_wool","color":"red"}]

# Test writing 1
setblock 0 1 0 minecraft:orange_wool
fill 0 1 1 0 1 7 minecraft:white_wool
scoreboard players set value mips32r6_mem 1
execute positioned 0 0 0 run function mips32r6:mem/util/write_word
execute if blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run tellraw @p [{"text":"Expected blocks: white_wool and orange_wool","color":"red"}]

# Test writing 2147483647
fill 0 1 0 0 1 6 minecraft:black_wool
setblock 0 1 7 minecraft:gray_wool
scoreboard players set value mips32r6_mem 2147483647
execute positioned 0 0 0 run function mips32r6:mem/util/write_word
execute if blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add passed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run scoreboard players add failed test 1
execute unless blocks 0 0 0 0 0 7 0 1 0 all run tellraw @p [{"text":"Expected blocks: gray_wool and black_wool","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/util/write_word_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/util/write_word_test failed!","color":"red"}]
