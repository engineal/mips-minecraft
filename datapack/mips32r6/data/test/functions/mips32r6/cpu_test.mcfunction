scoreboard players set passed test 0
scoreboard players set failed test 0

# Test something (I don't remember what exactly now)
# TODO: fix
scoreboard players set opcode cpu 0
scoreboard players set rs cpu 8
scoreboard players set rt cpu 9
scoreboard players set rd cpu 10
scoreboard players set shamt cpu 0
scoreboard players set funct cpu 32

scoreboard players set $t0 reg 10
scoreboard players set $t1 reg 15
scoreboard players set $t2 reg 0

function mips32r6:cpu

execute if score $t2 reg matches 25 run scoreboard players add passed test 1
execute unless score $t2 reg matches 25 run scoreboard players add failed test 1
execute unless score $t2 reg matches 25 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"$t2","objective":"reg"},"color":"red"},{"text":", Expected value: 25","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/cpu_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/cpu_test failed!","color":"red"}]
