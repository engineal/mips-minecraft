execute if score funct mips32r6_cpu matches ..1 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 2 run function mips32r6:cpu/special/srl
execute if score funct mips32r6_cpu matches 3..8 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 9 run function mips32r6:cpu/special/jr
execute if score funct mips32r6_cpu matches 10..11 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 12 run function mips32r6:cpu/special/syscall
execute if score funct mips32r6_cpu matches 13..31 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 32 run function mips32r6:cpu/special/alu_op
execute if score funct mips32r6_cpu matches 33 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 34 run function mips32r6:cpu/special/alu_op
execute if score funct mips32r6_cpu matches 35 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 36..38 run function mips32r6:cpu/special/alu_op
execute if score funct mips32r6_cpu matches 39.. run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
