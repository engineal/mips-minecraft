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
scoreboard players operation x mips32r6_mem = device_address rom
scoreboard players operation x mips32r6_mem /= 2^10 constants
scoreboard players operation x mips32r6_mem %= 2^8 constants

scoreboard players operation y mips32r6_mem = device_address rom
scoreboard players operation y mips32r6_mem /= 2^2 constants
scoreboard players operation y mips32r6_mem %= 2^8 constants

scoreboard players operation z mips32r6_mem = device_address rom
scoreboard players operation z mips32r6_mem %= 2^2 constants
scoreboard players operation z mips32r6_mem *= 2^1 constants

summon minecraft:armor_stand 0 0 0 {CustomName:"\"mem_address\"",NoGravity:true}
execute store result entity @e[name=mem_address,limit=1] Pos[0] double 1 run scoreboard players get x mips32r6_mem
execute store result entity @e[name=mem_address,limit=1] Pos[1] double 1 run scoreboard players get y mips32r6_mem
execute store result entity @e[name=mem_address,limit=1] Pos[2] double 1 run scoreboard players get z mips32r6_mem

# Read value
function mips32r6:mem/util/read_word

kill @e[name=mem_address]
scoreboard players reset x mips32r6_mem
scoreboard players reset y mips32r6_mem
scoreboard players reset z mips32r6_mem

execute if score debug mips32r6_mem matches 2.. run tellraw @p [{"text":"ROM["},{"score":{"name":"device_address","objective":"rom"}},{"text":"]>"},{"score":{"name":"value","objective":"mips32r6_mem"}}]
