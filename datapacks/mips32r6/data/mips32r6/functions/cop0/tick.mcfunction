# Increment CP0.Count register (regardless if instructions are being executed)
execute store result score tmp_value mips32r6_tick run data get storage mips32r6:reg CP0.Count
scoreboard players add tmp_value mips32r6_tick 1
execute store result storage mips32r6:reg CP0.Count int 1 run scoreboard players get tmp_value mips32r6_tick
scoreboard players reset tmp_value

# TODO: interrupt if CP0.Count == CP0.Compare
