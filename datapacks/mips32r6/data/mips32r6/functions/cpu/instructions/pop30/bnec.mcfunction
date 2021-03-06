# Format: BNEC rs, rt, offset
#
# Purpose: Compact Compare-and-Branch Instructions
#
# Description: if GPR[rs] != GPR[rt] then PC <- (PC + 4 + sign_extend(offset))
# The condition is evaluated. If the condition is true, the branch is taken.
# An 18-bit signed offset (the 16-bit offset field shifted left 2 bits) is added
# to the address of the instruction following the branch (not the branch itself),
# to form a PC-relative effective target address. Compact branches have no delay
# slot: the instruction after the branch is NOT executed if the branch is taken.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"bnec "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr

scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
function mips32r6:gpr/read
scoreboard players operation value2 mips32r6_alu = value mips32r6_gpr

# Branch
scoreboard players operation tmp_val mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute unless score value1 mips32r6_alu = value2 mips32r6_alu run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
