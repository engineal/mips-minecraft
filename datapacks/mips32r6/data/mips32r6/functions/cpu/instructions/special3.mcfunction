execute if score funct mips32r6_cpu matches ..-1 run tellraw @p [{"text":"special3 ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 0 run function mips32r6:cpu/instructions/special3/ext
execute if score funct mips32r6_cpu matches 1..3 run tellraw @p [{"text":"special3 ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 1..3 run scoreboard players set running mips32r6_tick 0
execute if score funct mips32r6_cpu matches 4 run function mips32r6:cpu/instructions/special3/ins
execute if score funct mips32r6_cpu matches 5.. run tellraw @p [{"text":"special3 ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 5.. run scoreboard players set running mips32r6_tick 0
