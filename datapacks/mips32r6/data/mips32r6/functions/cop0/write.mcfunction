# Write value to a CP0 register
#
# Inputs:
# index mips32r6_cop0
# value mips32r6_cop0

execute if score index mips32r6_cop0 matches ..0 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches ..0 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 1 run tellraw @p [{"text":"CP0.Random is read only!","color":"red"}]
execute if score index mips32r6_cop0 matches 1 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 2..7 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 2..7 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 8 run tellraw @p [{"text":"CP0.BadVAddr is read only!","color":"red"}]
execute if score index mips32r6_cop0 matches 8 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 9 store result storage mips32r6:reg CP0.Count int 1 run scoreboard players get value mips32r6_cop0
execute if score index mips32r6_cop0 matches 10 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 10 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 11 store result storage mips32r6:reg CP0.Compare int 1 run scoreboard players get value mips32r6_cop0
execute if score index mips32r6_cop0 matches 12 run function mips32r6:cop0/status/write
execute if score index mips32r6_cop0 matches 13 store result storage mips32r6:reg CP0.Cause int 1 run scoreboard players get value mips32r6_cop0
execute if score index mips32r6_cop0 matches 14 store result storage mips32r6:reg CP0.EPC int 1 run scoreboard players get value mips32r6_cop0
execute if score index mips32r6_cop0 matches 15..29 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 15..29 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 30 store result storage mips32r6:reg CP0.ErrorEPC int 1 run scoreboard players get value mips32r6_cop0
execute if score index mips32r6_cop0 matches 31.. run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 31.. run scoreboard players set running mips32r6_tick 0

execute if score cop0_level logging matches 1.. run tellraw @p [{"text":"CP0["},{"score":{"name":"index","objective":"mips32r6_cop0"}},{"text":"] <- "},{"score":{"name":"value","objective":"mips32r6_cop0"}}]
