execute if score debug cpu matches 1.. run tellraw @p [{"text":"beq "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# Read registers
scoreboard players operation address reg = rs cpu
function asm:reg/read
scoreboard players operation reg1 cpu = value reg

scoreboard players operation address reg = rt cpu
function asm:reg/read
scoreboard players operation reg2 cpu = value reg

# ALU operation
scoreboard players set operation alu 1
scoreboard players operation value1 alu = reg1 cpu
scoreboard players operation value2 alu = reg2 cpu
function asm:alu
scoreboard players operation result cpu = result alu

# Branch
scoreboard players operation tmp_val cpu = immediate cpu
scoreboard players operation tmp_val cpu *= 2^2 constants
execute if score result cpu matches 0 run scoreboard players operation pc cpu += tmp_val cpu
scoreboard players reset tmp_val cpu
