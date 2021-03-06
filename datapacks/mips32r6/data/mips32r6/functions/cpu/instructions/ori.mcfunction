# Format: ORI rt, rs, immediate
#
# Purpose: Or Immediate
# To do a bitwise logical OR with a constant.
#
# Description: GPR[rt] <- GPR[rs] or immediate
# The 16-bit immediate is zero-extended to the left and combined with the
# contents of GPR rs in a bitwise logical OR operation. The result is placed
# into GPR rt.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"ori "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"unsigned_immediate","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read

# add value of rs register to immediate
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr
scoreboard players operation value2 mips32r6_alu = unsigned_immediate mips32r6_cpu
function mips32r6:alu/or

# Save result to rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
scoreboard players operation value mips32r6_gpr = result mips32r6_alu
function mips32r6:gpr/write
