# Format: JIALC rt, offset
#
# Purpose: Jump Indexed and Link, Compact
#
# Description: GPR[31] <- PC+4, PC <- (GPR[rt] + sign_extend(offset))
# The jump target is formed by sign extending the offset field of the
# instruction and adding it to the contents of GPR rt.
# The offset is NOT shifted, that is, each bit of the offset is added to the
# corresponding bit of the GPR.
# Places the return address link in GPR 31. The return link is the address of
# the following instruction, where execution continues after a procedure call
# returns.
# Jump to the effective target address derived from GPR rt and the offset. If
# the target address is not 4-byte aligned, an Address Error exception will
# occur when the target address is fetched.
# Compact jumps do not have delay slots. The instruction after the jump is NOT
# executed when the jump is executed.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"jialc "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# Link
execute store result storage mips32r6:reg GPR[31] int 1 run scoreboard players get pc mips32r6_cpu

# Read rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/read

# TODO: sign extend offset

# Jump
scoreboard players operation pc mips32r6_cpu = immediate mips32r6_cpu
scoreboard players operation pc mips32r6_cpu += value mips32r6_reg
