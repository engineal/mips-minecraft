execute if score debug cpu matches 1.. run tellraw @p [{"text":"lw "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}},{"text":"("},{"score":{"name":"rs","objective":"cpu"}},{"text":")"}]

# Read registers
scoreboard players operation address reg = rs cpu
function hardware:reg/read

# Calculate memory offset
scoreboard players operation address mem = value reg
scoreboard players operation address mem += immediate reg

function hardware:mem/read

# Store register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = value mem
function hardware:reg/write
