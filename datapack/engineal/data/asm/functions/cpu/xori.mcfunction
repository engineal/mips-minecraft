execute if score debug cpu matches 1.. run tellraw @p [{"text":"xori "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# Read rs register
scoreboard players operation address reg = rs cpu
function asm:reg/read

# add value of rs register to immediate
scoreboard players operation value1 alu = value reg
scoreboard players operation value2 alu = immediate cpu
function asm:alu/xor

# Save result to rt register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = result alu
function asm:reg/write
