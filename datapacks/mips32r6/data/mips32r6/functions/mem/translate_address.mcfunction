# Translate virtual memory address to physical memory address
#
# Inputs:
# address mips32r6_mem
#
# Outputs:
# physical_address mips32r6_mem

# TODO: An Address Error will occur if kernel read

scoreboard players operation physical_address mips32r6_mem = address mips32r6_mem

# Currently using fixed address translation
# TODO: implement TLB

# Mapped addresses in kuseg 0x00000000-0x7FFFFFFF
# TODO: lookup Status ERL
execute if score address mips32r6_mem matches 0.. run tellraw @p [{"text":"kuseg memory not implemented!","color":"red"}]
execute if score address mips32r6_mem matches 0.. run scoreboard players set running mips32r6_tick 0

# Unmapped addresses in kseg0 0x80000000-0x9FFFFFFF
# Strip off leading 3 bits to map to physical addresses 0x00000000-0x1FFFFFFF
execute if score address mips32r6_mem matches ..-1610612737 run scoreboard players operation physical_address mips32r6_mem -= 2^31 constants

# Unmapped addresses in kseg1 0xA0000000-0xBFFFFFFF
# Strip off leading 3 bits to map to physical addresses 0x00000000-0x1FFFFFFF
execute if score address mips32r6_mem matches -1610612736..-1073741825 run scoreboard players add physical_address mips32r6_mem 1610612736

# Mapped addresses in kseg2 0xC0000000-0xFFFFFFFF use the identity mapping
