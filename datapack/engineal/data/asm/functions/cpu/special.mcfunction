execute if score funct cpu matches ..1 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 2 run function asm:cpu/special/srl
execute if score funct cpu matches 3..11 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 12 run function asm:cpu/special/syscall
execute if score funct cpu matches 13..31 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 32 run function asm:cpu/special/alu_op
execute if score funct cpu matches 33 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 34 run function asm:cpu/special/alu_op
execute if score funct cpu matches 35 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 36..38 run function asm:cpu/special/alu_op
execute if score funct cpu matches 39.. run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
