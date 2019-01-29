execute if score debug cpu matches 1.. run tellraw @p [{"text":"jal "},{"score":{"name":"address","objective":"cpu"}}]

# Link
scoreboard players operation $ra reg = pc cpu
scoreboard players add $ra reg 8

# Jump
scoreboard players operation tmp_val cpu = address cpu
scoreboard players operation tmp_val cpu *= 2^2 constants
scoreboard players operation pc cpu /= 2^28 constants
scoreboard players operation pc cpu %= 2^4 constants
scoreboard players operation pc cpu *= 2^28 constants
scoreboard players operation pc cpu += tmp_val cpu
scoreboard players reset tmp_val cpu
