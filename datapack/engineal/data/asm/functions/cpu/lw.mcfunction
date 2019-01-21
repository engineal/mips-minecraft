execute if score debug cpu matches 1.. run tellraw @p [{"text":"lw "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}},{"text":"("},{"score":{"name":"rs","objective":"cpu"}},{"text":")"}]

# Read registers
scoreboard players operation address reg = rs cpu
function asm:reg/read
scoreboard players operation reg1 cpu = value reg

# ALU operation
scoreboard players operation value1 alu = reg1 cpu
scoreboard players operation value2 alu = immediate cpu
function asm:alu/add
scoreboard players operation result cpu = result alu

# Memory operation
scoreboard players operation address mem = result cpu
scoreboard players operation value mem = reg2 cpu
function asm:mem/read
scoreboard players operation result cpu = value mem

# Store register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = result cpu
function asm:reg/write
