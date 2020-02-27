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
