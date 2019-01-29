scoreboard objectives add cpu dummy
scoreboard players set pc cpu 0
scoreboard players set instruction cpu 0
scoreboard players set opcode cpu 0
scoreboard players set rs cpu 0
scoreboard players set rt cpu 0
scoreboard players set rd cpu 0
scoreboard players set shamt cpu 0
scoreboard players set funct cpu 0
scoreboard players set immediate cpu 0
scoreboard players set address cpu 0

function hardware:cpu/cop0/init

scoreboard players set debug cpu 1

say cpu initiated
