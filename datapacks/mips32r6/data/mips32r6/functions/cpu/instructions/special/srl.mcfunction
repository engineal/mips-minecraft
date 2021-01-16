# Format: SRL rd, rt, sa
#
# Purpose: Shift Word Right Logical
# To execute a logical right-shift of a word by a fixed number of bits.
#
# Description: GPR[rd] <- GPR[rt] >> sa   (logical)
# The contents of the low-order 32-bit word of GPR rt are shifted right,
# inserting zeros into the emptied bits. The word result is placed in GPR rd.
# The bit-shift amount is specified by sa.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"srl "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"shamt","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
function mips32r6:gpr/read

# Shift right
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr
scoreboard players operation value2 mips32r6_alu = shamt mips32r6_cpu
function mips32r6:alu/shift_right

# Store result in rd register
scoreboard players operation index mips32r6_gpr = rd mips32r6_cpu
scoreboard players operation value mips32r6_gpr = result mips32r6_alu
function mips32r6:gpr/write
