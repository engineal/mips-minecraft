# JIC rt, offset
#
# PC <- (GPR[rt] + sign_extend(offset))

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"jic "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# Jump
scoreboard players operation pc mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation pc mips32r6_cpu += value mips32r6_reg
