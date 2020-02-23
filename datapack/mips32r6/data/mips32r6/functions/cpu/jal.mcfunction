execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"jal "},{"score":{"name":"address","objective":"mips32r6_cpu"}}]

# Link
scoreboard players operation $ra mips32r6_reg = pc mips32r6_cpu
scoreboard players add $ra mips32r6_reg 8

# Jump
scoreboard players operation tmp_val mips32r6_cpu = address mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
scoreboard players operation pc mips32r6_cpu /= 2^28 constants
scoreboard players operation pc mips32r6_cpu %= 2^4 constants
scoreboard players operation pc mips32r6_cpu *= 2^28 constants
scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
