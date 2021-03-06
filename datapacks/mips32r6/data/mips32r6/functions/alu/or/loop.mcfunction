scoreboard players operation tmp_value1 mips32r6_alu = value1 mips32r6_alu
scoreboard players operation tmp_value1 mips32r6_alu /= tmp_shift mips32r6_alu
scoreboard players operation tmp_value1 mips32r6_alu %= 2^1 constants

scoreboard players operation tmp_value2 mips32r6_alu = value2 mips32r6_alu
scoreboard players operation tmp_value2 mips32r6_alu /= tmp_shift mips32r6_alu
scoreboard players operation tmp_value2 mips32r6_alu %= 2^1 constants

execute if score tmp_value1 mips32r6_alu matches 1 run scoreboard players operation result mips32r6_alu += tmp_shift mips32r6_alu
execute if score tmp_value1 mips32r6_alu matches 0 if score tmp_value2 mips32r6_alu matches 1 run scoreboard players operation result mips32r6_alu += tmp_shift mips32r6_alu

scoreboard players operation tmp_shift mips32r6_alu += tmp_shift mips32r6_alu
execute if score tmp_shift mips32r6_alu matches 0.. run function mips32r6:alu/or/loop
