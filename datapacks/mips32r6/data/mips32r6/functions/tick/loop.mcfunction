scoreboard players add cycle mips32r6_tick 1
function mips32r6:cpu

execute if score running mips32r6_tick matches 1 if score cycle mips32r6_tick < multiplier mips32r6_tick run function mips32r6:tick/loop
