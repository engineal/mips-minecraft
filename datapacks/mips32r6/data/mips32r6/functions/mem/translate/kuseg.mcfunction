# Lookup Status ERL
execute store result score tmp_status_erl mips32r6_mem run data get storage mips32r6:reg CP0.Status.ERL

# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF when Status ERL is 0
execute if score tmp_status_erl mips32r6_mem matches 0 run scoreboard players add physical_address mips32r6_mem 67108864
# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF use the identity mapping when Status ERL is 1

scoreboard players reset tmp_status_erl mips32r6_mem
