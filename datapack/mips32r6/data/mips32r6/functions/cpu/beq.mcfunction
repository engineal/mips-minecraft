execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"beq "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read
scoreboard players operation value1 mips32r6_alu = value mips32r6_reg

scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read
scoreboard players operation value2 mips32r6_alu = value mips32r6_reg

# Branch
scoreboard players operation tmp_val mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute if score value1 mips32r6_alu = value2 mips32r6_alu run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
