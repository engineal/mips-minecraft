# Format: ADDI rt, rs, immediate
#
# Purpose: Add Immediate Word
# To add a constant to a 32-bit integer. If overflow occurs, then trap.
#
# Description: GPR[rt] <- GPR[rs] + immediate
# The 16-bit signed immediate is added to the 32-bit value in GPR rs to produce
# a 32-bit result.
# If the addition results in 32-bit 2’s complement arithmetic overflow, the
# destination register is not modified and an Integer Overflow exception occurs.
# If the addition does not overflow, the 32-bit result is placed into GPR rt.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"addi "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# add value of rs register to immediate
scoreboard players operation value1 mips32r6_alu = value mips32r6_reg
scoreboard players operation value2 mips32r6_alu = immediate mips32r6_cpu
function mips32r6:alu/add

# TODO: If the addition results in 32-bit 2’s complement arithmetic overflow, the
# destination register is not modified and an Integer Overflow exception occurs.

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
scoreboard players operation value mips32r6_reg = result mips32r6_alu
function mips32r6:reg/write
