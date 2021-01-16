execute if score funct mips32r6_cpu matches ..-1 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches ..-1 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches 0 run function mips32r6:cpu/instructions/special/nop
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches 1..2 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches 1..2 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches 3 run function mips32r6:cpu/instructions/special/ehb
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches 4.. run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 0 if score shamt mips32r6_cpu matches 4.. run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 1 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 1 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 2 run function mips32r6:cpu/instructions/special/srl
execute if score funct mips32r6_cpu matches 3..8 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 3..8 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 9 run function mips32r6:cpu/instructions/special/jalr
execute if score funct mips32r6_cpu matches 10..11 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 10..11 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 12 run function mips32r6:cpu/instructions/special/syscall
execute if score funct mips32r6_cpu matches 13..31 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 13..31 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 32 run function mips32r6:cpu/instructions/special/alu_op
execute if score funct mips32r6_cpu matches 33 run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 33 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 34..38 run function mips32r6:cpu/instructions/special/alu_op
execute if score funct mips32r6_cpu matches 39.. run tellraw @p [{"text":"special ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 39.. run scoreboard players set running mips32r6_tick 0
