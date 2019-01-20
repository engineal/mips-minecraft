execute if score debug cpu matches 1.. run tellraw @p [{"text":"add "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]

# Read registers
scoreboard players operation address reg = rs cpu
function asm:reg/read
scoreboard players operation reg1 cpu = value reg

scoreboard players operation address reg = rt cpu
function asm:reg/read
scoreboard players operation reg2 cpu = value reg

# ALU operation
scoreboard players set operation alu 0
scoreboard players operation value1 alu = reg1 cpu
scoreboard players operation value2 alu = reg2 cpu
function asm:alu
scoreboard players operation result cpu = result alu

# Store register
scoreboard players operation address reg = rd cpu
scoreboard players operation value reg = result cpu
function asm:reg/write
