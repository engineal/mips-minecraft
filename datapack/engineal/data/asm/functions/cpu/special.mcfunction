execute if score funct cpu matches ..11 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 12 run function asm:cpu/special/syscall
execute if score funct cpu matches 13..31 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct cpu matches 32 run function asm:cpu/special/add
execute if score funct cpu matches 33.. run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
