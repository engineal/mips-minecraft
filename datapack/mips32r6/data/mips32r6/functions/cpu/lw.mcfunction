# Format: LW rt, offset(base)
#
# Purpose: Load Word
# To load a word from memory as a signed value.
#
# Description: GPR[rt] <- memory[GPR[base] + offset]
# The contents of the 32-bit word at the memory location specified by the
# aligned effective address are fetched, sign-extended to the GPR register
# length if necessary, and placed in GPR rt. The 16-bit signed offset is added
# to the contents of GPR base to form the effective address.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"lw "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}},{"text":"("},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":")"}]

# Read registers
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# Calculate memory offset
scoreboard players operation address mips32r6_mem = value mips32r6_reg
scoreboard players operation address mips32r6_mem += immediate mips32r6_cpu

function mips32r6:mem/read

# Store register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
scoreboard players operation value mips32r6_reg = value mips32r6_mem
function mips32r6:reg/write
