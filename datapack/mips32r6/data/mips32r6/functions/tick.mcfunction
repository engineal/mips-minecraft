# Increment cp0 count register (regardless if instructions are being executed)
execute store result score tmp_value mips32r6_tick run data get storage mips32r6:reg cp0.count
scoreboard players add tmp_value mips32r6_tick 1
execute store result storage mips32r6:reg cp0.count int 1 run scoreboard players get tmp_value mips32r6_tick
scoreboard players reset tmp_value

# Detect potential errors caused by unfinished CPU cycles
# Since the first command we run increments the cycle count and the last
# command sets it back to 0, the last instruction never completed if the
# cycle count is not 0 here
execute unless score cycle mips32r6_tick matches 0 run tellraw @p [{"text":"CPU detected that the last cycle finished improperly!","color":"red"}]
execute unless score cycle mips32r6_tick matches 0 run tellraw @p [{"text":"Make sure that maxCommandChainLength was not exceded."}]
execute unless score cycle mips32r6_tick matches 0 run tellraw @p [{"text":"You may need to decrease the clock multiplier"}]
execute unless score cycle mips32r6_tick matches 0 run scoreboard players set running mips32r6_tick 0

# Increase speed by executing multiple CPU cycles per tick
# Must be careful that we don't exceed the maxCommandChainLength gamerule
execute if score running mips32r6_tick matches 1 run function mips32r6:tick/loop
scoreboard players set cycle mips32r6_tick 0
