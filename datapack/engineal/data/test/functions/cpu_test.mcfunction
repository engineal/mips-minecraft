scoreboard players set opcode cpu 0
scoreboard players set rs cpu 8
scoreboard players set rt cpu 9
scoreboard players set rd cpu 10
scoreboard players set shamt cpu 0
scoreboard players set funct cpu 32

scoreboard players set $t0 reg 10
scoreboard players set $t1 reg 15
scoreboard players set $t2 reg 0

function hardware:cpu

execute if score $t2 reg matches 25 run tellraw @p {"text":"cpu test passed!","color":"green"}
execute unless score $t2 reg matches 25 run tellraw @p {"text":"cpu test failed!","color":"red"}
