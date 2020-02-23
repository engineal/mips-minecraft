execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"blez "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Branch
scoreboard players operation tmp_val mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute if score value mips32r6_reg matches ..0 run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
