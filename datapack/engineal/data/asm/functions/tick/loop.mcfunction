scoreboard players add cycle tick 1
function asm:cpu

execute if score running tick matches 1 if score cycle tick < multiplier tick run function asm:tick/loop

