# Format: JR rs
#
# Purpose: Jump Register
# To execute a branch to an instruction address in a register.
#
# Description: PC <- GPR[rs]
# Jump to the effective target address in GPR rs. Execute the instruction
# following the jump, in the branch delay slot, before jumping.
# If the target address is not 4-byte aligned, an Address Error exception will
# occur when the target address is fetched.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"jr "},{"score":{"name":"rs","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# TODO: Execute the instruction following the jump, in the branch delay slot, before jumping.

# Jump
scoreboard players operation pc mips32r6_cpu = value mips32r6_reg
