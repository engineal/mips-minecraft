execute if score debug cpu matches 1.. run tellraw @p [{"text":"lw "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}},{"text":"("},{"score":{"name":"rs","objective":"cpu"}},{"text":")"}]

# Read registers
scoreboard players operation address reg = rs cpu
function asm:reg/read

# ALU operation
scoreboard players operation value1 alu = value reg
scoreboard players operation value2 alu = immediate cpu
function asm:alu/add

# Memory operation
scoreboard players operation address mem = result alu
function asm:mem/read

# Store register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = value mem
function asm:reg/write
