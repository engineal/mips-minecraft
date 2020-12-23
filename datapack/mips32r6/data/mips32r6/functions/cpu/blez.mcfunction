# Format: BLEZ rs, offset
#
# Purpose: Branch on Less Than or Equal to Zero
# To test a GPR then do a PC-relative conditional branch.
#
# Description: if GPR[rs] <= 0 then branch
# An 18-bit signed offset (the 16-bit offset field shifted left 2 bits) is added
# to the address of the instruction following the branch (not the branch itself),
# in the branch delay slot, to form a PC-relative effective target address.
# If the contents of GPR rs are less than or equal to zero (sign bit is 1 or
# value is zero), branch to the effective target address after the instruction
# in the delay slot is executed.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"blez "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# TODO: Execute the instruction following the jump, in the branch delay slot, before jumping.

# Branch
scoreboard players operation tmp_val mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
execute if score value mips32r6_reg matches ..0 run scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
