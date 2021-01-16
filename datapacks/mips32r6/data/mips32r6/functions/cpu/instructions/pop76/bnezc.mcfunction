# Format: BNEZC rs, offset
#
# Purpose: Compact Compare-and-Branch Instructions
#
# Description: if GPR[rs] != 0 then PC <- (PC + 4 + sign_extend(offset))
# The condition is evaluated. If the condition is true, the branch is taken.
# An 18-bit signed offset (the 16-bit offset field shifted left 2 bits) is added
# to the address of the instruction following the branch (not the branch itself),
# to form a PC-relative effective target address. Compact branches have no delay
# slot: the instruction after the branch is NOT executed if the branch is taken.

# offset: apply 21 bit mask
scoreboard players operation tmp_val mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu %= 2^21 constants

# sign extend
execute if score tmp_val mips32r6_cpu matches 1048576.. run scoreboard players operation tmp_val mips32r6_cpu -= 2^21 constants

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"bnezc "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"tmp_val","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read

# Shift offset left by 2 and branch
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute unless score value mips32r6_gpr matches 0 run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
