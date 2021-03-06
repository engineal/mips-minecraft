scoreboard players set passed test 0
scoreboard players set failed test 0

# Test reading -2147483648
fill 0 0 0 0 0 6 minecraft:white_wool
setblock 0 0 7 minecraft:light_gray_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_word
execute if score value mips32r6_mem matches -2147483648 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches -2147483648 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches -2147483648 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: -2147483648","color":"red"}]

# Test reading -1
fill 0 0 0 0 0 7 minecraft:black_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_word
execute if score value mips32r6_mem matches -1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches -1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches -1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: -1","color":"red"}]

# Test reading 0
fill 0 0 0 0 0 7 minecraft:white_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_word
execute if score value mips32r6_mem matches 0 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 0 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Test reading 1
setblock 0 0 0 minecraft:orange_wool
fill 0 0 1 0 0 7 minecraft:white_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_word
execute if score value mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Test reading 2147483647
fill 0 0 0 0 0 6 minecraft:black_wool
setblock 0 0 7 minecraft:gray_wool
execute positioned 0 0 0 run function mips32r6:mem/util/read_word
execute if score value mips32r6_mem matches 2147483647 run scoreboard players add passed test 1
execute unless score value mips32r6_mem matches 2147483647 run scoreboard players add failed test 1
execute unless score value mips32r6_mem matches 2147483647 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2147483647","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/util/read_word_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/util/read_word_test failed!","color":"red"}]
