execute if score debug cpu matches 1.. if score funct cpu matches 32 run tellraw @p [{"text":"add "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]
execute if score debug cpu matches 1.. if score funct cpu matches 34 run tellraw @p [{"text":"sub "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]
execute if score debug cpu matches 1.. if score funct cpu matches 36 run tellraw @p [{"text":"and "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]
execute if score debug cpu matches 1.. if score funct cpu matches 37 run tellraw @p [{"text":"or "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]
execute if score debug cpu matches 1.. if score funct cpu matches 38 run tellraw @p [{"text":"xor "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]

# Read registers
scoreboard players operation address reg = rs cpu
function asm:reg/read
scoreboard players operation value1 alu = value reg

scoreboard players operation address reg = rt cpu
function asm:reg/read
scoreboard players operation value2 alu = value reg

# ALU operation
execute if score funct cpu matches 32 run function asm:alu/add
execute if score funct cpu matches 34 run function asm:alu/sub
execute if score funct cpu matches 36 run function asm:alu/and
execute if score funct cpu matches 37 run function asm:alu/or
execute if score funct cpu matches 38 run function asm:alu/xor

# Store register
scoreboard players operation address reg = rd cpu
scoreboard players operation value reg = result alu
function asm:reg/write
