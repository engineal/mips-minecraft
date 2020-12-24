# Perform memory read from RAM
#
# Inputs:
# device_address ram
#
# Outputs:
# value mips32r6_mem

# While the RAM responds to all physical addresses 0x00000000-0x003FFFFF,
# only the first 2 MB is currently implemented (0x00000000-0x001FFFFF)
execute if score device_address ram matches 2097152.. run tellraw @p [{"text":"RAM address ","color":"red"},{"score":{"name":"device_address","objective":"ram"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address ram matches 2097152.. run scoreboard players set running mips32r6_tick 0

# Select coordinates
# World coordinates 0 0 16 - 1023 255 32
scoreboard players operation tmp_x ram = device_address ram
scoreboard players operation tmp_x ram /= 2^10 constants
scoreboard players operation tmp_x ram %= 2^10 constants

scoreboard players operation tmp_y ram = device_address ram
scoreboard players operation tmp_y ram /= 2^2 constants
scoreboard players operation tmp_y ram %= 2^8 constants

scoreboard players operation tmp_z ram = device_address ram
scoreboard players operation tmp_z ram /= 2^20 constants
scoreboard players operation tmp_z ram %= 2^1 constants
scoreboard players operation tmp_z ram *= 9 constants
scoreboard players add tmp_z ram 16

summon minecraft:armor_stand 0 0 16 {CustomName:"\"ram_address\"",NoGravity:true}
execute store result entity @e[name=ram_address,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ram
execute store result entity @e[name=ram_address,limit=1] Pos[1] double 1 run scoreboard players get tmp_y ram
execute store result entity @e[name=ram_address,limit=1] Pos[2] double 1 run scoreboard players get tmp_z ram

# Read value
execute at @e[name=ram_address] run function mips32r6:mem/util/read_word

kill @e[name=ram_address]
scoreboard players reset tmp_x ram
scoreboard players reset tmp_y ram
scoreboard players reset tmp_z ram

execute if score debug mips32r6_mem matches 2.. run tellraw @p [{"text":"RAM["},{"score":{"name":"device_address","objective":"ram"}},{"text":"]>"},{"score":{"name":"value","objective":"mips32r6_mem"}}]
