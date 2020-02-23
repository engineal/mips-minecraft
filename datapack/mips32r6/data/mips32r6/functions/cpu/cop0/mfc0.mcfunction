execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"mfc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read register from cop0
scoreboard players set value mips32r6_reg 0
execute if score rd mips32r6_cpu matches 0 run scoreboard players operation value mips32r6_reg = index mips32r6_cop0
execute if score rd mips32r6_cpu matches 1 run scoreboard players operation value mips32r6_reg = random mips32r6_cop0
execute if score rd mips32r6_cpu matches 2 run scoreboard players operation value mips32r6_reg = entrylo mips32r6_cop0
execute if score rd mips32r6_cpu matches 4 run scoreboard players operation value mips32r6_reg = context mips32r6_cop0
execute if score rd mips32r6_cpu matches 8 run scoreboard players operation value mips32r6_reg = vaddr mips32r6_cop0
execute if score rd mips32r6_cpu matches 10 run scoreboard players operation value mips32r6_reg = entryhi mips32r6_cop0
execute if score rd mips32r6_cpu matches 12 run scoreboard players operation value mips32r6_reg = status mips32r6_cop0
execute if score rd mips32r6_cpu matches 13 run scoreboard players operation value mips32r6_reg = cause mips32r6_cop0
execute if score rd mips32r6_cpu matches 14 run scoreboard players operation value mips32r6_reg = epc mips32r6_cop0

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/write
