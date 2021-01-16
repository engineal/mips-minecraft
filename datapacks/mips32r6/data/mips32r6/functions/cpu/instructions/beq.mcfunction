# Format: BEQ rs, rt, offset
#
# Purpose: Branch on Equal
# To compare GPRs then do a PC-relative conditional branch.
#
# Description: if GPR[rs] = GPR[rt] then branch
# An 18-bit signed offset (the 16-bit offset field shifted left 2 bits) is added
# to the address of the instruction following the branch (not the branch itself),
# in the branch delay slot, to form a PC-relative effective target address.
# If the contents of GPR rs and GPR rt are equal, branch to the effective target
# address after the instruction in the delay slot is executed.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"beq "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr

scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
function mips32r6:gpr/read
scoreboard players operation value2 mips32r6_alu = value mips32r6_gpr

# TODO: Execute the instruction following the jump, in the branch delay slot, before jumping.

# Branch
scoreboard players operation tmp_val mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute if score value1 mips32r6_alu = value2 mips32r6_alu run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
