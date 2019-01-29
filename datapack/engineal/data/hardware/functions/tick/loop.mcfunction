scoreboard players add cycle tick 1
function hardware:cpu

execute if score running tick matches 1 if score cycle tick < multiplier tick run function hardware:tick/loop

