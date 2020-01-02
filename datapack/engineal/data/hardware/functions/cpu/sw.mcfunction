execute if score debug cpu matches 1.. run tellraw @p [{"text":"sw "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}},{"text":"("},{"score":{"name":"rs","objective":"cpu"}},{"text":")"}]

# Read registers
scoreboard players operation address reg = rs cpu
function hardware:reg/read

# Calculate memory offset
scoreboard players operation address mem = value reg
scoreboard players operation address mem += immediate cpu

# Read registers
scoreboard players operation address reg = rt cpu
function hardware:reg/read

# Memory operation
scoreboard players operation value mem = value reg
function hardware:mem/write
