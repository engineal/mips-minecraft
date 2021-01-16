# Read value from a CP0 register
#
# Inputs:
# index mips32r6_cop0
#
# Outputs:
# value mips32r6_cop0

scoreboard players set value mips32r6_cop0 0
execute if score index mips32r6_cop0 matches ..0 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches ..0 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 1 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.Random
execute if score index mips32r6_cop0 matches 2..7 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 2..7 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 8 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.BadVAddr
execute if score index mips32r6_cop0 matches 9 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.Count
execute if score index mips32r6_cop0 matches 10 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 10 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 11 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.Compare
execute if score index mips32r6_cop0 matches 12 run function mips32r6:cop0/status/read
execute if score index mips32r6_cop0 matches 13 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.Cause
execute if score index mips32r6_cop0 matches 14 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.EPC
execute if score index mips32r6_cop0 matches 15..29 run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 15..29 run scoreboard players set running mips32r6_tick 0
execute if score index mips32r6_cop0 matches 30 store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.ErrorEPC
execute if score index mips32r6_cop0 matches 31.. run tellraw @p [{"text":"CP0[","color":"red"},{"score":{"name":"index","objective":"mips32r6_cop0"},"color":"red"},{"text":"] not implemented!","color":"red"}]
execute if score index mips32r6_cop0 matches 31.. run scoreboard players set running mips32r6_tick 0

execute if score cop0_level logging matches 1.. run tellraw @p [{"text":"CP0["},{"score":{"name":"index","objective":"mips32r6_cop0"}},{"text":"] -> "},{"score":{"name":"value","objective":"mips32r6_cop0"}}]
