# Lookup Status ERL
execute store result score status_erl mips32r6_mem run data get storage mips32r6:reg cp0.status

# ERL: shift right 2 bits, apply 1 bit mask
scoreboard players operation status_erl mips32r6_mem /= 2^2 constants
scoreboard players operation status_erl mips32r6_mem %= 2^1 constants

# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF when Status ERL is 0
execute if score status_erl mips32r6_mem matches 0 run scoreboard players add physical_address mips32r6_mem 67108864
# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF use the identity mapping when Status ERL is 1

scoreboard players reset status_erl mips32r6_mem
