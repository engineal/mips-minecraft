# Format: BEQC rs, rt, offset
#
# Purpose: Compact Compare-and-Branch Instructions
#
# Description: if GPR[rs] = GPR[rt] then PC <- (PC + 4 + sign_extend(offset))
# The condition is evaluated. If the condition is true, the branch is taken.
# An 18-bit signed offset (the 16-bit offset field shifted left 2 bits) is added
# to the address of the instruction following the branch (not the branch itself),
# to form a PC-relative effective target address. Compact branches have no delay
# slot: the instruction after the branch is NOT executed if the branch is taken.

# sign extend
scoreboard players operation tmp_val mips32r6_cpu = immediate mips32r6_cpu
execute if score tmp_val mips32r6_cpu matches 32768.. run scoreboard players operation tmp_val mips32r6_cpu -= 2^16 constants

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"beqc "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"tmp_val","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read
scoreboard players operation value1 mips32r6_alu = value mips32r6_reg

scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read
scoreboard players operation value2 mips32r6_alu = value mips32r6_reg

# Branch
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute if score value1 mips32r6_alu = value2 mips32r6_alu run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
