scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= shift alu
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= shift alu
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 run scoreboard players operation result alu += shift alu
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += shift alu

scoreboard players operation shift alu += shift alu
execute if score shift alu matches 0.. run function hardware:alu/or/loop
