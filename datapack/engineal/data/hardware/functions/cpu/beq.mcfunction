execute if score debug cpu matches 1.. run tellraw @p [{"text":"beq "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# Read registers
scoreboard players operation address reg = rs cpu
function hardware:reg/read
scoreboard players operation value1 alu = value reg

scoreboard players operation address reg = rt cpu
function hardware:reg/read
scoreboard players operation value2 alu = value reg

# Branch
scoreboard players operation tmp_val cpu = immediate cpu
scoreboard players operation tmp_val cpu *= 2^2 constants
execute if score value1 alu = value2 alu run scoreboard players operation pc cpu += tmp_val cpu
scoreboard players reset tmp_val cpu
