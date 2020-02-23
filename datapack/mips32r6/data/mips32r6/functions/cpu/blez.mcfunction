execute if score debug cpu matches 1.. run tellraw @p [{"text":"blez "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# Read registers
scoreboard players operation address reg = rs cpu
function mips32r6:reg/read

# Branch
scoreboard players operation tmp_val cpu = immediate cpu
scoreboard players operation tmp_val cpu *= 2^2 constants
execute if score value reg matches ..0 run scoreboard players operation pc cpu += tmp_val cpu
scoreboard players reset tmp_val cpu
