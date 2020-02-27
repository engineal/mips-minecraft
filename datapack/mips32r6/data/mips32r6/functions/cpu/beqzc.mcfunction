# BEQZC rs, offset
#
# if GPR[rs] = 0 then PC <- (PC + 4 + sign_extend(offset))

# offset: apply 21 bit mask
scoreboard players operation tmp_val mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu %= 2^16 constants

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"beqzc "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"tmp_val","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Shift offset left by 2 and branch
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute if score value mips32r6_reg matches 0 run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
