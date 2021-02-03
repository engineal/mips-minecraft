execute unless score write mips32r6_mem matches 1 run tellraw @p [{"text":"LCD CPLD DATA is write only!","color":"red"}]
execute unless score write mips32r6_mem matches 1 run scoreboard players set running mips32r6_tick 0
execute if score write mips32r6_mem matches 1 run tellraw @p [{"text":"LCD DATA: "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
