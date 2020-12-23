# Perform memory read from RAM
#
# Inputs:
# device_address ram
#
# Outputs:
# value mips32r6_mem

# While the RAM responds to all physical addresses 0x00000000-0x003FFFFF,
# only the first 256 KB is currently implemented (0x00000000-0x00040000)
execute if score device_address ram matches 262144.. run tellraw @p [{"text":"RAM address ","color":"red"},{"score":{"name":"device_address","objective":"ram"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address ram matches 262144.. run scoreboard players set running mips32r6_tick 0

# Select coordinates
# World coordinates 0 0 16 - 255 255 23
scoreboard players operation x ram = device_address ram
scoreboard players operation x ram /= 2^10 constants
scoreboard players operation x ram %= 2^8 constants

scoreboard players operation y ram = device_address ram
scoreboard players operation y ram /= 2^2 constants
scoreboard players operation y ram %= 2^8 constants

summon minecraft:armor_stand 0 0 16 {CustomName:"\"ram_address\"",NoGravity:true}
execute store result entity @e[name=ram_address,limit=1] Pos[0] double 1 run scoreboard players get x ram
execute store result entity @e[name=ram_address,limit=1] Pos[1] double 1 run scoreboard players get y ram

# Read value
execute at @e[name=ram_address] run function mips32r6:mem/util/read_word

kill @e[name=ram_address]
scoreboard players reset x ram
scoreboard players reset y ram

execute if score debug mips32r6_mem matches 2.. run tellraw @p [{"text":"RAM["},{"score":{"name":"device_address","objective":"ram"}},{"text":"]>"},{"score":{"name":"value","objective":"mips32r6_mem"}}]
