# Format: LBU rt, offset(base)
#
# Purpose: Load Byte Unsigned
# To load a byte from memory as an unsigned value
#
# Description: GPR[rt] <- memory[GPR[base] + offset]
# The contents of the 8-bit byte at the memory location specified by the
# effective address are fetched, zero-extended, and placed in GPR rt. The 16-bit
# signed offset is added to the contents of GPR base to form the effective
# address.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"lbu "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}},{"text":"("},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":")"}]

# Read rs register
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read

# Calculate memory offset
scoreboard players operation address mips32r6_mem = value mips32r6_gpr
scoreboard players operation address mips32r6_mem += immediate mips32r6_cpu

scoreboard players set length mips32r6_mem 8
scoreboard players set write mips32r6_mem 0
function mips32r6:mem

# Store result in rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
scoreboard players operation value mips32r6_gpr = value mips32r6_mem
function mips32r6:gpr/write
