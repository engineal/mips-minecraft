# Format: MTC0 rt, rd
#
# Purpose: Move to Coprocessor 0
# To move the contents of a general register to a coprocessor 0 register.
#
# Description: CPR[0,rd,sel] <- GPR[rt]
# The contents of general register rt are loaded into the coprocessor 0 register
# specified by the combination of rd and sel. Not all coprocessor 0 registers
# support the sel field. In those instances, the sel field must be set to zero.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"mtc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read rt register
scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
function mips32r6:gpr/read

# Write value to CP0
scoreboard players operation index mips32r6_cop0 = rd mips32r6_cpu
scoreboard players operation value mips32r6_cop0 = value mips32r6_gpr
function mips32r6:cop0/write
