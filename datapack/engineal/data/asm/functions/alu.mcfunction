execute if score operation alu matches 0 run function asm:alu/add
execute if score operation alu matches 1 run function asm:alu/sub
execute if score operation alu matches 2 run function asm:alu/mul
execute if score operation alu matches 3 run function asm:alu/div
execute if score operation alu matches 4 run function asm:alu/mod
execute if score operation alu matches 5.. run tellraw @p [{"score":{"name":"operation","objective":"alu"},"color":"red"},{"text":" is not a valid operation!","color":"red"}]
