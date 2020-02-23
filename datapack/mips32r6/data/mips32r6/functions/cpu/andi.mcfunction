execute if score debug cpu matches 1.. run tellraw @p [{"text":"andi "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# Read rs register
scoreboard players operation address reg = rs cpu
function mips32r6:reg/read

# add value of rs register to immediate
scoreboard players operation value1 alu = value reg
scoreboard players operation value2 alu = immediate cpu
function mips32r6:alu/and

# Save result to rt register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = result alu
function mips32r6:reg/write
