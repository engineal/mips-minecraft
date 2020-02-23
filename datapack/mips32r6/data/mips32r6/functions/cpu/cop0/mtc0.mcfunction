execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"mtc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# Write register to cop0
execute if score rd mips32r6_cpu matches 0 run scoreboard players operation index mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 1 run scoreboard players operation random mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 2 run scoreboard players operation entrylo mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 4 run scoreboard players operation context mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 8 run scoreboard players operation vaddr mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 10 run scoreboard players operation entryhi mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 12 run scoreboard players operation status mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 13 run scoreboard players operation cause mips32r6_cop0 = value mips32r6_reg
execute if score rd mips32r6_cpu matches 14 run scoreboard players operation epc mips32r6_cop0 = value mips32r6_reg
