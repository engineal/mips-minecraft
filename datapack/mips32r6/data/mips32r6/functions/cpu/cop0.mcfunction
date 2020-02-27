execute if score funct mips32r6_cpu matches 0 if score rs mips32r6_cpu matches 0 run function mips32r6:cpu/cop0/mfc0
execute if score funct mips32r6_cpu matches 0 if score rs mips32r6_cpu matches 4 run function mips32r6:cpu/cop0/mtc0
execute if score funct mips32r6_cpu matches 1..23 run tellraw @p [{"text":"cop0 ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score funct mips32r6_cpu matches 24 run function mips32r6:cpu/cop0/eret
execute if score funct mips32r6_cpu matches 25.. run tellraw @p [{"text":"cop0 ","color":"red"},{"score":{"name":"funct","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
