execute if score length mips32r6_mem matches 8 unless score write mips32r6_mem matches 1 run scoreboard players set value mips32r6_mem 0
execute if score length mips32r6_mem matches 8 if score write mips32r6_mem matches 1 run tellraw @p [{"text":"LCD CPLD DATA is readonly!","color":"red"}]
execute if score length mips32r6_mem matches 8 if score write mips32r6_mem matches 1 run scoreboard players set running mips32r6_tick 0
execute unless score length mips32r6_mem matches 8 run tellraw @p [{"text":"LCD does not support accessing ","color":"red"},{"score":{"name":"length","objective":"mips32r6_mem"},"color":"red"},{"text":" bit values!","color":"red"}]
execute unless score length mips32r6_mem matches 8 run scoreboard players set running mips32r6_tick 0
