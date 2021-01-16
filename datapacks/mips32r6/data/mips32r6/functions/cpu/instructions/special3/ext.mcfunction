# Format: EXT rt, rs, pos, size
#
# Purpose: Extract Bit Field
# To extract a bit field from GPR rs and store it right-justified into GPR rt.
#
# Description: GPR[rt] <- ExtractField(GPR[rs], msbd, lsb)
# The bit field starting at bit pos and extending for size bits is extracted
# from GPR rs and stored zero-extended and right-justified in GPR rt. The
# assembly language arguments pos and size are converted by the assembler to the
# instruction fields msbd (the most significant bit of the destination field in
# GPR rt), in instruction bits 15..11, and lsb (least significant bit of the
# source field in GPR rs), in instruction bits 10..6, as follows:
# msbd <- size-1
# lsb <- pos
# The values of pos and size must satisfy all of the following relations:
# 0 <= pos < 32
# 0 < size <= 32
# 0 < pos+size <= 32

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"ext "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"shamt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Shift right by pos
scoreboard players operation value1 mips32r6_alu = value mips32r6_reg
scoreboard players operation value2 mips32r6_alu = shamt mips32r6_cpu
function mips32r6:alu/shift_right

scoreboard players operation value mips32r6_reg = result mips32r6_alu

# Apply bit mask msbd
execute if score rd mips32r6_cpu matches 0 run scoreboard players operation value mips32r6_reg %= 2^1 constants
execute if score rd mips32r6_cpu matches 1 run scoreboard players operation value mips32r6_reg %= 2^2 constants
execute if score rd mips32r6_cpu matches 2 run scoreboard players operation value mips32r6_reg %= 2^3 constants
execute if score rd mips32r6_cpu matches 3 run scoreboard players operation value mips32r6_reg %= 2^4 constants
execute if score rd mips32r6_cpu matches 4 run scoreboard players operation value mips32r6_reg %= 2^5 constants
execute if score rd mips32r6_cpu matches 5 run scoreboard players operation value mips32r6_reg %= 2^6 constants
execute if score rd mips32r6_cpu matches 6 run scoreboard players operation value mips32r6_reg %= 2^7 constants
execute if score rd mips32r6_cpu matches 7 run scoreboard players operation value mips32r6_reg %= 2^8 constants
execute if score rd mips32r6_cpu matches 8 run scoreboard players operation value mips32r6_reg %= 2^9 constants
execute if score rd mips32r6_cpu matches 9 run scoreboard players operation value mips32r6_reg %= 2^10 constants
execute if score rd mips32r6_cpu matches 10 run scoreboard players operation value mips32r6_reg %= 2^11 constants
execute if score rd mips32r6_cpu matches 11 run scoreboard players operation value mips32r6_reg %= 2^12 constants
execute if score rd mips32r6_cpu matches 12 run scoreboard players operation value mips32r6_reg %= 2^13 constants
execute if score rd mips32r6_cpu matches 13 run scoreboard players operation value mips32r6_reg %= 2^14 constants
execute if score rd mips32r6_cpu matches 14 run scoreboard players operation value mips32r6_reg %= 2^15 constants
execute if score rd mips32r6_cpu matches 15 run scoreboard players operation value mips32r6_reg %= 2^16 constants
execute if score rd mips32r6_cpu matches 16 run scoreboard players operation value mips32r6_reg %= 2^17 constants
execute if score rd mips32r6_cpu matches 17 run scoreboard players operation value mips32r6_reg %= 2^18 constants
execute if score rd mips32r6_cpu matches 18 run scoreboard players operation value mips32r6_reg %= 2^19 constants
execute if score rd mips32r6_cpu matches 19 run scoreboard players operation value mips32r6_reg %= 2^20 constants
execute if score rd mips32r6_cpu matches 20 run scoreboard players operation value mips32r6_reg %= 2^21 constants
execute if score rd mips32r6_cpu matches 21 run scoreboard players operation value mips32r6_reg %= 2^22 constants
execute if score rd mips32r6_cpu matches 22 run scoreboard players operation value mips32r6_reg %= 2^23 constants
execute if score rd mips32r6_cpu matches 23 run scoreboard players operation value mips32r6_reg %= 2^24 constants
execute if score rd mips32r6_cpu matches 24 run scoreboard players operation value mips32r6_reg %= 2^25 constants
execute if score rd mips32r6_cpu matches 25 run scoreboard players operation value mips32r6_reg %= 2^26 constants
execute if score rd mips32r6_cpu matches 26 run scoreboard players operation value mips32r6_reg %= 2^27 constants
execute if score rd mips32r6_cpu matches 27 run scoreboard players operation value mips32r6_reg %= 2^28 constants
execute if score rd mips32r6_cpu matches 28 run scoreboard players operation value mips32r6_reg %= 2^29 constants
execute if score rd mips32r6_cpu matches 29 run scoreboard players operation value mips32r6_reg %= 2^30 constants
execute if score rd mips32r6_cpu matches 30 run scoreboard players operation value mips32r6_reg %= 2^31 constants

# Fix negative numbers
execute if score value mips32r6_reg matches ..-1 run scoreboard players operation value mips32r6_reg *= -1 constants

# TODO: negative numbers not tested!

# Write result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/write
