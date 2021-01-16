# Increment cp0 count register (regardless if instructions are being executed)
execute store result score tmp_value mips32r6_tick run data get storage mips32r6:reg cp0.count
scoreboard players add tmp_value mips32r6_tick 1
execute store result storage mips32r6:reg cp0.count int 1 run scoreboard players get tmp_value mips32r6_tick
scoreboard players reset tmp_value
