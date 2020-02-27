execute if score funct mips32r6_cpu matches 0 run function mips32r6:cpu/special3/ext
execute if score funct mips32r6_cpu matches 1.. run tellraw @p [{"text":"special3 ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
