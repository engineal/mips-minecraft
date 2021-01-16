# Handle ROM memory access
#
# Inputs:
# physical_address mips32r6_mem
# length mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

scoreboard players operation device_address rom = physical_address mips32r6_mem
scoreboard players remove device_address rom 532676608

# While the ROM responds to all physical addresses 0x1FC00000-0x1FFFFFFF,
# only the first 256 KB is currently implemented (0x1FC00000-0x1FC40000)
execute if score device_address rom matches 262144.. run tellraw @p [{"text":"ROM address ","color":"red"},{"score":{"name":"device_address","objective":"rom"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address rom matches 262144.. run scoreboard players set running mips32r6_tick 0

# World coordinates 0 0 0 - 255 255 7
scoreboard players operation tmp_x rom = device_address rom
scoreboard players operation tmp_x rom /= 2^10 constants
scoreboard players operation tmp_x rom %= 2^8 constants

scoreboard players operation tmp_y rom = device_address rom
scoreboard players operation tmp_y rom /= 2^2 constants
scoreboard players operation tmp_y rom %= 2^8 constants

# Summon armor stand at ROM coordinates
summon minecraft:armor_stand 0 0 0 {CustomName:"\"rom_address\"",NoGravity:true}
execute store result entity @e[name=rom_address,limit=1] Pos[0] double 1 run scoreboard players get tmp_x rom
execute store result entity @e[name=rom_address,limit=1] Pos[1] double 1 run scoreboard players get tmp_y rom

execute if score rom_level logging matches 2.. run tellraw @p [{"text":"ROM["},{"score":{"name":"device_address","objective":"rom"}},{"text":"] x: "},{"score":{"name":"tmp_x","objective":"rom"}},{"text":" y: "},{"score":{"name":"tmp_y","objective":"rom"}},{"text":" z: 0"}]

scoreboard players reset tmp_x rom
scoreboard players reset tmp_y rom

# Read value at armor stand position
execute if score length mips32r6_mem matches ..3 run tellraw @p [{"text":"ROM does not support accessing ","color":"red"},{"score":{"name":"length","objective":"mips32r6_mem"},"color":"red"},{"text":" bit values!","color":"red"}]
execute if score length mips32r6_mem matches ..3 run scoreboard players set running mips32r6_tick 0
execute if score length mips32r6_mem matches 4 unless score write mips32r6_mem matches 1 at @e[name=rom_address] run function mips32r6:mem/util/read_nibble
execute if score length mips32r6_mem matches 4 if score write mips32r6_mem matches 1 run tellraw @p [{"text":"ROM is readonly!","color":"red"}]
execute if score length mips32r6_mem matches 4 if score write mips32r6_mem matches 1 run scoreboard players set running mips32r6_tick 0
execute if score length mips32r6_mem matches 5..7 run tellraw @p [{"text":"ROM does not support accessing ","color":"red"},{"score":{"name":"length","objective":"mips32r6_mem"},"color":"red"},{"text":" bit values!","color":"red"}]
execute if score length mips32r6_mem matches 5..7 run scoreboard players set running mips32r6_tick 0
execute if score length mips32r6_mem matches 8 unless score write mips32r6_mem matches 1 at @e[name=rom_address] run function mips32r6:mem/util/read_byte
execute if score length mips32r6_mem matches 8 if score write mips32r6_mem matches 1 run tellraw @p [{"text":"ROM is readonly!","color":"red"}]
execute if score length mips32r6_mem matches 8 if score write mips32r6_mem matches 1 run scoreboard players set running mips32r6_tick 0
execute if score length mips32r6_mem matches 9..31 run tellraw @p [{"text":"ROM does not support accessing ","color":"red"},{"score":{"name":"length","objective":"mips32r6_mem"},"color":"red"},{"text":" bit values!","color":"red"}]
execute if score length mips32r6_mem matches 9..31 run scoreboard players set running mips32r6_tick 0
execute if score length mips32r6_mem matches 32 unless score write mips32r6_mem matches 1 at @e[name=rom_address] run function mips32r6:mem/util/read_word
execute if score length mips32r6_mem matches 32 if score write mips32r6_mem matches 1 run tellraw @p [{"text":"ROM is readonly!","color":"red"}]
execute if score length mips32r6_mem matches 32 if score write mips32r6_mem matches 1 run scoreboard players set running mips32r6_tick 0
execute if score length mips32r6_mem matches 33.. run tellraw @p [{"text":"ROM does not support accessing ","color":"red"},{"score":{"name":"length","objective":"mips32r6_mem"},"color":"red"},{"text":" bit values!","color":"red"}]
execute if score length mips32r6_mem matches 33.. run scoreboard players set running mips32r6_tick 0

kill @e[name=rom_address]

execute unless score write mips32r6_mem matches 1 if score rom_level logging matches 1.. run tellraw @p [{"text":"ROM["},{"score":{"name":"device_address","objective":"rom"}},{"text":"] -> "},{"score":{"name":"value","objective":"mips32r6_mem"}}]

scoreboard players add handled mips32r6_mem 1
