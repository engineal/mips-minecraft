# Handle RAM memory access
#
# Inputs:
# physical_address mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

scoreboard players operation device_address ram = physical_address mips32r6_mem

# While the RAM responds to all physical addresses 0x00000000-0x003FFFFF,
# only the first 2 MB is currently implemented (0x00000000-0x001FFFFF)
execute if score device_address ram matches 2097152.. run tellraw @p [{"text":"RAM address ","color":"red"},{"score":{"name":"device_address","objective":"ram"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address ram matches 2097152.. run scoreboard players set running mips32r6_tick 0

# World coordinates 0 0 16 - 511 255 50
scoreboard players operation tmp_x ram = device_address ram
scoreboard players operation tmp_x ram /= 2^10 constants
scoreboard players operation tmp_x ram %= 2^9 constants

scoreboard players operation tmp_y ram = device_address ram
scoreboard players operation tmp_y ram /= 2^2 constants
scoreboard players operation tmp_y ram %= 2^8 constants

scoreboard players operation tmp_z ram = device_address ram
scoreboard players operation tmp_z ram /= 2^19 constants
scoreboard players operation tmp_z ram %= 2^2 constants
scoreboard players operation tmp_z ram *= 9 constants
scoreboard players add tmp_z ram 16

# Summon armor stand at RAM coordinates
summon minecraft:armor_stand 0 0 16 {CustomName:"\"ram_address\"",NoGravity:true}
execute store result entity @e[name=ram_address,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ram
execute store result entity @e[name=ram_address,limit=1] Pos[1] double 1 run scoreboard players get tmp_y ram
execute store result entity @e[name=ram_address,limit=1] Pos[2] double 1 run scoreboard players get tmp_z ram

execute if score ram_level logging matches 2.. run tellraw @p [{"text":"RAM["},{"score":{"name":"device_address","objective":"ram"}},{"text":"] x: "},{"score":{"name":"tmp_x","objective":"ram"}},{"text":" y: "},{"score":{"name":"tmp_y","objective":"ram"}},{"text":" z: "},{"score":{"name":"tmp_z","objective":"ram"}}]

scoreboard players reset tmp_x ram
scoreboard players reset tmp_y ram
scoreboard players reset tmp_z ram

# Read or write value at armor stand position
execute unless score write mips32r6_mem matches 1 at @e[name=ram_address] run function mips32r6:mem/util/read_word
execute if score write mips32r6_mem matches 1 at @e[name=ram_address] run function mips32r6:mem/util/write_word

kill @e[name=ram_address]

execute unless score write mips32r6_mem matches 1 if score ram_level logging matches 1.. run tellraw @p [{"text":"RAM["},{"score":{"name":"device_address","objective":"ram"}},{"text":"] -> "},{"score":{"name":"value","objective":"mips32r6_mem"}}]
execute if score write mips32r6_mem matches 1 if score ram_level logging matches 1.. run tellraw @p [{"text":"RAM["},{"score":{"name":"device_address","objective":"ram"}},{"text":"] <- "},{"score":{"name":"value","objective":"mips32r6_mem"}}]

scoreboard players add handled mips32r6_mem 1
