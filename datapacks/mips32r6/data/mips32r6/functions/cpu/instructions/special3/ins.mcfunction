# Format: INS rt, rs, pos, size
#
# Purpose: Insert Bit Field
# To merge a right-justified bit field from GPR rs into a specified field in GPR
# rt.
#
# Description: GPR[rt] <- InsertField(GPR[rt], GPR[rs], msb, lsb)
# The right-most size bits from GPR rs are merged into the value from GPR rt
# starting at bit position pos. The result is placed back in GPR rt. The
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

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"ins "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"shamt","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# If not inserting into far left of rt, strip off all but upper 31..msb+1 of rt
execute if score rd mips32r6_cpu matches ..30 run scoreboard players operation value1 mips32r6_alu = value mips32r6_reg
execute if score rd mips32r6_cpu matches ..30 run scoreboard players operation value2 mips32r6_alu = rd mips32r6_cpu
execute if score rd mips32r6_cpu matches ..30 run scoreboard players add value2 mips32r6_alu 1
execute if score rd mips32r6_cpu matches ..30 run function mips32r6:alu/shift_right

execute if score rd mips32r6_cpu matches ..30 run scoreboard players operation value1 mips32r6_alu = result mips32r6_alu
execute if score rd mips32r6_cpu matches ..30 run function mips32r6:alu/shift_left

execute if score rd mips32r6_cpu matches ..30 run scoreboard players operation tmp_upper mips32r6_cpu = result mips32r6_alu

# If inserting into far left of rt, there is no upper value
execute if score rd mips32r6_cpu matches 31 run scoreboard players set tmp_upper mips32r6_cpu 0

# Strip off all but lower lsb-1..0 of rt
scoreboard players operation tmp_lower mips32r6_cpu = value mips32r6_reg

# If inserting into far right of rt, there is no lower value
execute if score shamt mips32r6_cpu matches 0 run scoreboard players set tmp_lower mips32r6_cpu 0
execute if score shamt mips32r6_cpu matches 1 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^1 constants
execute if score shamt mips32r6_cpu matches 2 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^2 constants
execute if score shamt mips32r6_cpu matches 3 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^3 constants
execute if score shamt mips32r6_cpu matches 4 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^4 constants
execute if score shamt mips32r6_cpu matches 5 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^5 constants
execute if score shamt mips32r6_cpu matches 6 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^6 constants
execute if score shamt mips32r6_cpu matches 7 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^7 constants
execute if score shamt mips32r6_cpu matches 8 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^8 constants
execute if score shamt mips32r6_cpu matches 9 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^9 constants
execute if score shamt mips32r6_cpu matches 10 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^10 constants
execute if score shamt mips32r6_cpu matches 11 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^11 constants
execute if score shamt mips32r6_cpu matches 12 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^12 constants
execute if score shamt mips32r6_cpu matches 13 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^13 constants
execute if score shamt mips32r6_cpu matches 14 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^14 constants
execute if score shamt mips32r6_cpu matches 15 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^15 constants
execute if score shamt mips32r6_cpu matches 16 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^16 constants
execute if score shamt mips32r6_cpu matches 17 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^17 constants
execute if score shamt mips32r6_cpu matches 18 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^18 constants
execute if score shamt mips32r6_cpu matches 19 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^19 constants
execute if score shamt mips32r6_cpu matches 20 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^20 constants
execute if score shamt mips32r6_cpu matches 21 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^21 constants
execute if score shamt mips32r6_cpu matches 22 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^22 constants
execute if score shamt mips32r6_cpu matches 23 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^23 constants
execute if score shamt mips32r6_cpu matches 24 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^24 constants
execute if score shamt mips32r6_cpu matches 25 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^25 constants
execute if score shamt mips32r6_cpu matches 26 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^26 constants
execute if score shamt mips32r6_cpu matches 27 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^27 constants
execute if score shamt mips32r6_cpu matches 28 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^28 constants
execute if score shamt mips32r6_cpu matches 29 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^29 constants
execute if score shamt mips32r6_cpu matches 30 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^30 constants
execute if score shamt mips32r6_cpu matches 31 run scoreboard players operation tmp_lower mips32r6_cpu %= 2^31 constants

# Read rs
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Strip off all but msb..lsb of rs
scoreboard players operation value1 mips32r6_alu = value mips32r6_reg
scoreboard players operation value2 mips32r6_alu = shamt mips32r6_cpu
function mips32r6:alu/shift_right

scoreboard players operation value1 mips32r6_alu = result mips32r6_alu
function mips32r6:alu/shift_left

scoreboard players operation tmp_middle mips32r6_cpu = result mips32r6_alu

execute if score rd mips32r6_cpu matches 0 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^1 constants
execute if score rd mips32r6_cpu matches 1 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^2 constants
execute if score rd mips32r6_cpu matches 2 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^3 constants
execute if score rd mips32r6_cpu matches 3 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^4 constants
execute if score rd mips32r6_cpu matches 4 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^5 constants
execute if score rd mips32r6_cpu matches 5 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^6 constants
execute if score rd mips32r6_cpu matches 6 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^7 constants
execute if score rd mips32r6_cpu matches 7 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^8 constants
execute if score rd mips32r6_cpu matches 8 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^9 constants
execute if score rd mips32r6_cpu matches 9 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^10 constants
execute if score rd mips32r6_cpu matches 10 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^11 constants
execute if score rd mips32r6_cpu matches 11 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^12 constants
execute if score rd mips32r6_cpu matches 12 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^13 constants
execute if score rd mips32r6_cpu matches 13 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^14 constants
execute if score rd mips32r6_cpu matches 14 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^15 constants
execute if score rd mips32r6_cpu matches 15 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^16 constants
execute if score rd mips32r6_cpu matches 16 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^17 constants
execute if score rd mips32r6_cpu matches 17 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^18 constants
execute if score rd mips32r6_cpu matches 18 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^19 constants
execute if score rd mips32r6_cpu matches 19 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^20 constants
execute if score rd mips32r6_cpu matches 20 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^21 constants
execute if score rd mips32r6_cpu matches 21 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^22 constants
execute if score rd mips32r6_cpu matches 22 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^23 constants
execute if score rd mips32r6_cpu matches 23 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^24 constants
execute if score rd mips32r6_cpu matches 24 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^25 constants
execute if score rd mips32r6_cpu matches 25 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^26 constants
execute if score rd mips32r6_cpu matches 26 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^27 constants
execute if score rd mips32r6_cpu matches 27 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^28 constants
execute if score rd mips32r6_cpu matches 28 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^29 constants
execute if score rd mips32r6_cpu matches 29 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^30 constants
execute if score rd mips32r6_cpu matches 30 run scoreboard players operation tmp_middle mips32r6_cpu %= 2^31 constants

# TODO: negative numbers not tested!

# Combine sections
scoreboard players operation value mips32r6_reg = tmp_upper mips32r6_cpu
scoreboard players operation value mips32r6_reg += tmp_middle mips32r6_cpu
scoreboard players operation value mips32r6_reg += tmp_lower mips32r6_cpu

# Write result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/write

scoreboard players reset tmp_upper mips32r6_cpu
scoreboard players reset tmp_middle mips32r6_cpu
scoreboard players reset tmp_lower mips32r6_cpu
