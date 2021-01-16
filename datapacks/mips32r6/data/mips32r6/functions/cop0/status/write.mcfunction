# Write value to the CP0.Status register
#
# Inputs:
# value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IE int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^1 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.EXL int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^2 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.ERL int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^4 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.UM int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^8 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[0] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^9 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[1] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^10 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[2] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^11 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[3] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^12 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[4] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^13 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[5] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^14 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[6] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^15 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.IM[7] int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^22 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.BEV int 1 run scoreboard players get tmp_value mips32r6_cop0

# Writes to Status.FR are ignored

scoreboard players operation tmp_value mips32r6_cop0 = value mips32r6_cop0
scoreboard players operation tmp_value mips32r6_cop0 /= 2^28 constants
scoreboard players operation tmp_value mips32r6_cop0 %= 2^1 constants
execute store result storage mips32r6:reg CP0.Status.RW int 1 run scoreboard players get tmp_value mips32r6_cop0

scoreboard players reset tmp_value mips32r6_cop0
