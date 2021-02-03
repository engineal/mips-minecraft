execute unless score write mips32r6_mem matches 1 run scoreboard players set value mips32r6_mem 0
execute if score write mips32r6_mem matches 1 if score value mips32r6_mem matches ..0 run tellraw @p [{"text":"LCD command ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score write mips32r6_mem matches 1 if score value mips32r6_mem matches ..0 run scoreboard players set running mips32r6_tick 0
execute if score write mips32r6_mem matches 1 if score value mips32r6_mem matches 1 run function lcd:commands/clear
execute if score write mips32r6_mem matches 1 if score value mips32r6_mem matches 2.. run tellraw @p [{"text":"LCD command ","color":"red"},{"score":{"name":"value","objective":"mips32r6_mem"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score write mips32r6_mem matches 1 if score value mips32r6_mem matches 2.. run scoreboard players set running mips32r6_tick 0
