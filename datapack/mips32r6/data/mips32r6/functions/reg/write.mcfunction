# Write value to a CPU register
#
# Inputs:
# address mips32r6_reg
# value mips32r6_reg

execute if score address mips32r6_reg matches 1 store result storage mips32r6:reg register[1] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 2 store result storage mips32r6:reg register[2] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 3 store result storage mips32r6:reg register[3] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 4 store result storage mips32r6:reg register[4] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 5 store result storage mips32r6:reg register[5] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 6 store result storage mips32r6:reg register[6] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 7 store result storage mips32r6:reg register[7] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 8 store result storage mips32r6:reg register[8] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 9 store result storage mips32r6:reg register[9] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 10 store result storage mips32r6:reg register[10] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 11 store result storage mips32r6:reg register[11] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 12 store result storage mips32r6:reg register[12] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 13 store result storage mips32r6:reg register[13] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 14 store result storage mips32r6:reg register[14] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 15 store result storage mips32r6:reg register[15] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 16 store result storage mips32r6:reg register[16] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 17 store result storage mips32r6:reg register[17] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 18 store result storage mips32r6:reg register[18] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 19 store result storage mips32r6:reg register[19] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 20 store result storage mips32r6:reg register[20] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 21 store result storage mips32r6:reg register[21] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 22 store result storage mips32r6:reg register[22] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 23 store result storage mips32r6:reg register[23] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 24 store result storage mips32r6:reg register[24] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 25 store result storage mips32r6:reg register[25] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 26 store result storage mips32r6:reg register[26] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 27 store result storage mips32r6:reg register[27] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 28 store result storage mips32r6:reg register[28] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 29 store result storage mips32r6:reg register[29] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 30 store result storage mips32r6:reg register[30] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 31 store result storage mips32r6:reg register[31] int 1 run scoreboard players get value mips32r6_reg

execute if score debug mips32r6_reg matches 1.. run tellraw @p [{"text":"register["},{"score":{"name":"address","objective":"mips32r6_reg"}},{"text":"]<-"},{"score":{"name":"value","objective":"mips32r6_reg"}}]
