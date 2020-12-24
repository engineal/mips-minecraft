# Write value to a CPU register
#
# Inputs:
# address mips32r6_reg
# value mips32r6_reg

execute if score address mips32r6_reg matches 1 store result storage mips32r6:reg GPR[1] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 2 store result storage mips32r6:reg GPR[2] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 3 store result storage mips32r6:reg GPR[3] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 4 store result storage mips32r6:reg GPR[4] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 5 store result storage mips32r6:reg GPR[5] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 6 store result storage mips32r6:reg GPR[6] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 7 store result storage mips32r6:reg GPR[7] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 8 store result storage mips32r6:reg GPR[8] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 9 store result storage mips32r6:reg GPR[9] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 10 store result storage mips32r6:reg GPR[10] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 11 store result storage mips32r6:reg GPR[11] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 12 store result storage mips32r6:reg GPR[12] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 13 store result storage mips32r6:reg GPR[13] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 14 store result storage mips32r6:reg GPR[14] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 15 store result storage mips32r6:reg GPR[15] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 16 store result storage mips32r6:reg GPR[16] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 17 store result storage mips32r6:reg GPR[17] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 18 store result storage mips32r6:reg GPR[18] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 19 store result storage mips32r6:reg GPR[19] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 20 store result storage mips32r6:reg GPR[20] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 21 store result storage mips32r6:reg GPR[21] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 22 store result storage mips32r6:reg GPR[22] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 23 store result storage mips32r6:reg GPR[23] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 24 store result storage mips32r6:reg GPR[24] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 25 store result storage mips32r6:reg GPR[25] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 26 store result storage mips32r6:reg GPR[26] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 27 store result storage mips32r6:reg GPR[27] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 28 store result storage mips32r6:reg GPR[28] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 29 store result storage mips32r6:reg GPR[29] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 30 store result storage mips32r6:reg GPR[30] int 1 run scoreboard players get value mips32r6_reg
execute if score address mips32r6_reg matches 31 store result storage mips32r6:reg GPR[31] int 1 run scoreboard players get value mips32r6_reg

execute if score debug mips32r6_reg matches 1.. run tellraw @p [{"text":"GPR["},{"score":{"name":"address","objective":"mips32r6_reg"}},{"text":"]<-"},{"score":{"name":"value","objective":"mips32r6_reg"}}]
