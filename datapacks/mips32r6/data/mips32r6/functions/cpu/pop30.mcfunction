execute if score rs mips32r6_cpu matches 0 run tellraw @p [{"text":"bnezalc not implemented!","color":"red"}]
execute if score rs mips32r6_cpu matches 0 run scoreboard players set running mips32r6_tick 0
execute unless score rs mips32r6_cpu matches 0 run function mips32r6:cpu/pop30/bnec