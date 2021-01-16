# Read value from the CP0.Status register
#
# Outputs:
# value mips32r6_cop0

execute store result score value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IE

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.EXL
scoreboard players operation tmp_value mips32r6_cop0 *= 2^1 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.ERL
scoreboard players operation tmp_value mips32r6_cop0 *= 2^2 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.UM
scoreboard players operation tmp_value mips32r6_cop0 *= 2^4 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[0]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^8 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[1]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^9 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[2]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^10 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[3]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^11 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[4]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^12 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[5]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^13 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[6]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^14 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.IM[7]
scoreboard players operation tmp_value mips32r6_cop0 *= 2^15 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.BEV
scoreboard players operation tmp_value mips32r6_cop0 *= 2^22 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

# Status.FR is a constant 0 because no floating-point unit is implemented

execute store result score tmp_value mips32r6_cop0 run data get storage mips32r6:reg CP0.Status.RW
scoreboard players operation tmp_value mips32r6_cop0 *= 2^28 constants
scoreboard players operation value mips32r6_cop0 += tmp_value mips32r6_cop0

scoreboard players reset tmp_value mips32r6_cop0
