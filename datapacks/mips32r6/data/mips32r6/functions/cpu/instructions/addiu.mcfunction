# Format: ADDIU rt, rs, immediate
#
# Purpose: Add Immediate Unsigned Word
# To add a constant to a 32-bit integer.
#
# Description: GPR[rt] <- GPR[rs] + immediate
# The 16-bit signed immediate is added to the 32-bit value in GPR rs and the
# 32-bit arithmetic result is placed into GPR rt.
# No Integer Overflow exception occurs under any circumstances.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"addiu "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read

# add value of rs register to immediate
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr
scoreboard players operation value2 mips32r6_alu = immediate mips32r6_cpu
function mips32r6:alu/add

# Save result to rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
scoreboard players operation value mips32r6_gpr = result mips32r6_alu
function mips32r6:gpr/write
