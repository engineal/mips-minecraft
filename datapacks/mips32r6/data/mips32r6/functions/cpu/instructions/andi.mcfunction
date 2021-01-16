# Format: ANDI rt, rs, immediate
#
# Purpose: and immediate
# To do a bitwise logical AND with a constant.
#
# Description: GPR[rt] <- GPR[rs] and zero_extend(immediate)
# The 16-bit immediate is zero-extended to the left and combined with the
# contents of GPR rs in a bitwise logical AND operation. The result is placed
# into GPR rt.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"andi "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read

# add value of rs register to immediate
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr
scoreboard players operation value2 mips32r6_alu = immediate mips32r6_cpu
function mips32r6:alu/and

# Save result to rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
scoreboard players operation value mips32r6_gpr = result mips32r6_alu
function mips32r6:gpr/write
