# MTC0 rt, rd
#
# CPR[0,rd,sel] <- GPR[rt]

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"mtc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# Write register to cop0
execute if score rd mips32r6_cpu matches 0 store result storage mips32r6:reg cp0.index int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 1 store result storage mips32r6:reg cp0.random int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 2 store result storage mips32r6:reg cp0.entrylo int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 3 run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches 4 store result storage mips32r6:reg cp0.context int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 5..7 run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches 8 store result storage mips32r6:reg cp0.vaddr int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 9 store result storage mips32r6:reg cp0.count int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 10 store result storage mips32r6:reg cp0.entryhi int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 11 store result storage mips32r6:reg cp0.compare int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 12 store result storage mips32r6:reg cp0.status int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 13 store result storage mips32r6:reg cp0.cause int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 14 store result storage mips32r6:reg cp0.epc int 1 run scoreboard players get value mips32r6_reg
execute if score rd mips32r6_cpu matches 15.. run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
