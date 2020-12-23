# Format: SRL rd, rt, sa
#
# Purpose: Shift Word Right Logical
# To execute a logical right-shift of a word by a fixed number of bits.
#
# Description: GPR[rd] <- GPR[rt] >> sa   (logical)
# The contents of the low-order 32-bit word of GPR rt are shifted right,
# inserting zeros into the emptied bits. The word result is placed in GPR rd.
# The bit-shift amount is specified by sa.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"srl "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"shamt","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# Shift right
execute if score shamt mips32r6_cpu matches 1 run scoreboard players operation value mips32r6_reg /= 2^1 constants
execute if score shamt mips32r6_cpu matches 2 run scoreboard players operation value mips32r6_reg /= 2^2 constants
execute if score shamt mips32r6_cpu matches 3 run scoreboard players operation value mips32r6_reg /= 2^3 constants
execute if score shamt mips32r6_cpu matches 4 run scoreboard players operation value mips32r6_reg /= 2^4 constants
execute if score shamt mips32r6_cpu matches 5 run scoreboard players operation value mips32r6_reg /= 2^5 constants
execute if score shamt mips32r6_cpu matches 6 run scoreboard players operation value mips32r6_reg /= 2^6 constants
execute if score shamt mips32r6_cpu matches 7 run scoreboard players operation value mips32r6_reg /= 2^7 constants
execute if score shamt mips32r6_cpu matches 8 run scoreboard players operation value mips32r6_reg /= 2^8 constants
execute if score shamt mips32r6_cpu matches 9 run scoreboard players operation value mips32r6_reg /= 2^9 constants
execute if score shamt mips32r6_cpu matches 10 run scoreboard players operation value mips32r6_reg /= 2^10 constants
execute if score shamt mips32r6_cpu matches 11 run scoreboard players operation value mips32r6_reg /= 2^11 constants
execute if score shamt mips32r6_cpu matches 12 run scoreboard players operation value mips32r6_reg /= 2^12 constants
execute if score shamt mips32r6_cpu matches 13 run scoreboard players operation value mips32r6_reg /= 2^13 constants
execute if score shamt mips32r6_cpu matches 14 run scoreboard players operation value mips32r6_reg /= 2^14 constants
execute if score shamt mips32r6_cpu matches 15 run scoreboard players operation value mips32r6_reg /= 2^15 constants
execute if score shamt mips32r6_cpu matches 16 run scoreboard players operation value mips32r6_reg /= 2^16 constants
execute if score shamt mips32r6_cpu matches 17 run scoreboard players operation value mips32r6_reg /= 2^17 constants
execute if score shamt mips32r6_cpu matches 18 run scoreboard players operation value mips32r6_reg /= 2^18 constants
execute if score shamt mips32r6_cpu matches 19 run scoreboard players operation value mips32r6_reg /= 2^19 constants
execute if score shamt mips32r6_cpu matches 20 run scoreboard players operation value mips32r6_reg /= 2^20 constants
execute if score shamt mips32r6_cpu matches 21 run scoreboard players operation value mips32r6_reg /= 2^21 constants
execute if score shamt mips32r6_cpu matches 22 run scoreboard players operation value mips32r6_reg /= 2^22 constants
execute if score shamt mips32r6_cpu matches 23 run scoreboard players operation value mips32r6_reg /= 2^23 constants
execute if score shamt mips32r6_cpu matches 24 run scoreboard players operation value mips32r6_reg /= 2^24 constants
execute if score shamt mips32r6_cpu matches 25 run scoreboard players operation value mips32r6_reg /= 2^25 constants
execute if score shamt mips32r6_cpu matches 26 run scoreboard players operation value mips32r6_reg /= 2^26 constants
execute if score shamt mips32r6_cpu matches 27 run scoreboard players operation value mips32r6_reg /= 2^27 constants
execute if score shamt mips32r6_cpu matches 28 run scoreboard players operation value mips32r6_reg /= 2^28 constants
execute if score shamt mips32r6_cpu matches 29 run scoreboard players operation value mips32r6_reg /= 2^29 constants
execute if score shamt mips32r6_cpu matches 30 run scoreboard players operation value mips32r6_reg /= 2^30 constants
execute if score shamt mips32r6_cpu matches 31 run scoreboard players operation value mips32r6_reg /= 2^31 constants

# Store result in rd register
scoreboard players operation address mips32r6_reg = rd mips32r6_cpu
function mips32r6:reg/write
