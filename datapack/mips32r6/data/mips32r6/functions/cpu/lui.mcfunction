execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"lui "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Shift immediate left 16 bits
scoreboard players operation result mips32r6_alu = immediate mips32r6_cpu
scoreboard players operation result mips32r6_alu *= 2^16 constants

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
scoreboard players operation value mips32r6_reg = result mips32r6_alu
function mips32r6:reg/write
