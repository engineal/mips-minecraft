execute if score debug cpu matches 1.. run tellraw @p [{"text":"lui "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# Shift immediate left 16 bits
scoreboard players operation result alu = immediate cpu
scoreboard players operation result alu *= 2^16 constants

# Save result to rt register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = result alu
function asm:reg/write
