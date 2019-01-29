execute if score funct cpu matches 0 if score rs cpu matches 0 run function hardware:cpu/cop0/mfc0
execute if score funct cpu matches 0 if score rs cpu matches 4 run function hardware:cpu/cop0/mtc0

execute if score funct cpu matches 1..23 run tellraw @p [{"text":"cop0 ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]

execute if score funct cpu matches 24 run function hardware:cpu/cop0/eret

execute if score funct cpu matches 25.. run tellraw @p [{"text":"cop0 ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
