# Format: AUI rt, rs immediate
#
# Purpose: Add Immediate to Upper Bits
# Add Upper Immediate.
#
# Description: GPR[rt] <- GPR[rs] + sign_extend(immediate << 16)
# The 16 bit immediate is shifted left 16 bits, sign-extended, and added to the
# register rs, storing the result in rt.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"aui "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Shift immediate left 16 bits
scoreboard players operation result mips32r6_alu = immediate mips32r6_cpu
scoreboard players operation result mips32r6_alu *= 2^16 constants

# TODO: sign extend immediate

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
scoreboard players operation value mips32r6_reg += result mips32r6_alu
function mips32r6:reg/write
