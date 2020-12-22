# Perform memory read from ROM
#
# Inputs:
# device_address rom
#
# Outputs:
# value mips32r6_mem

# While the ROM responds to all physical addresses 0x1FC00000-0x1FFFFFFF,
# only the first 256 KB is currently implemented (0x1FC00000-0x1FC40000)
execute if score device_address rom matches 262144.. run tellraw @p [{"text":"ROM address ","color":"red"},{"score":{"name":"device_address","objective":"rom"},"color":"red"},{"text":" not implemented!","color":"red"}]

# Select coordinates
# World coordinates 0 0 0 - 255 255 7
scoreboard players operation x rom = device_address rom
scoreboard players operation x rom /= 2^10 constants
scoreboard players operation x rom %= 2^8 constants

scoreboard players operation y rom = device_address rom
scoreboard players operation y rom /= 2^2 constants
scoreboard players operation y rom %= 2^8 constants

summon minecraft:armor_stand 0 0 0 {CustomName:"\"rom_address\"",NoGravity:true}
execute store result entity @e[name=rom_address,limit=1] Pos[0] double 1 run scoreboard players get x rom
execute store result entity @e[name=rom_address,limit=1] Pos[1] double 1 run scoreboard players get y rom

# Read value
execute at @e[name=rom_address] run function mips32r6:mem/util/read_word

kill @e[name=rom_address]
scoreboard players reset x rom
scoreboard players reset y rom

execute if score debug mips32r6_mem matches 2.. run tellraw @p [{"text":"ROM["},{"score":{"name":"device_address","objective":"rom"}},{"text":"]>"},{"score":{"name":"value","objective":"mips32r6_mem"}}]
