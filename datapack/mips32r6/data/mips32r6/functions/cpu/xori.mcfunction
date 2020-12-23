# Format: XORI rt, rs, immediate
#
# Purpose: Exclusive OR Immediate
# To do a bitwise logical Exclusive OR with a constant.
#
# Description: GPR[rt] <- GPR[rs] XOR immediate
# Combine the contents of GPR rs and the 16-bit zero-extended immediate in a
# bitwise logical Exclusive OR operation and place the result into GPR rt.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"xori "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# add value of rs register to immediate
scoreboard players operation value1 mips32r6_alu = value mips32r6_reg
scoreboard players operation value2 mips32r6_alu = immediate mips32r6_cpu
function mips32r6:alu/xor

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
scoreboard players operation value mips32r6_reg = result mips32r6_alu
function mips32r6:reg/write
