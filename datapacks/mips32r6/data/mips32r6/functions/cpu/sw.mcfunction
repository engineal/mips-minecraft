# Format: SW rt, offset(base)
#
# Purpose: Store Word
# To store a word to memory.
#
# Description: memory[GPR[base] + offset] <- GPR[rt]
# The least-significant 32-bit word of GPR rt is stored in memory at the
# location specified by the aligned effective address. The 16-bit signed offset
# is added to the contents of GPR base to form the effective address.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"sw "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}},{"text":"("},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":")"}]

# Read registers
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Calculate memory offset
scoreboard players operation address mips32r6_mem = value mips32r6_reg
scoreboard players operation address mips32r6_mem += immediate mips32r6_cpu

# Read registers
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# Memory operation
scoreboard players operation value mips32r6_mem = value mips32r6_reg
function mips32r6:mem/write
