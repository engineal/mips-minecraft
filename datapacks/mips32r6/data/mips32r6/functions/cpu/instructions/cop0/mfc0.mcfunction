# Format: MFC0 rt, rd
#
# Purpose: Move from Coprocessor 0
# To move the contents of a coprocessor 0 register to a general register.
#
# Description: GPR[rt] <- CPR[0,rd,sel]
# The contents of the coprocessor 0 register specified by the combination of rd
# and sel are loaded into general register rt. Not all coprocessor 0 registers
# support the sel field. In those instances, the sel field must be zero.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"mfc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read register from CP0
scoreboard players operation index mips32r6_cop0 = rd mips32r6_cpu
function mips32r6:cop0/read

# Save value to rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
scoreboard players operation value mips32r6_gpr = value mips32r6_cop0
function mips32r6:gpr/write
