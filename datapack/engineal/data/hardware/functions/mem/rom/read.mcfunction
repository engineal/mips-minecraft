# Perform memory read from ROM
#
# Device ID: 0
#
# Physical addresses 0x1FC00000-0x1FFFFFFF
# Unmapped cached (kseg0) virtual addresses 0x9FC00000-0x9FFFFFFF
# Unmapped uncached (kseg1) virtual addresses 0xBFC00000-0xBFFFFFFF
#
# Inputs:
# device_address mem
#
# Outputs:
# value mem

# While the ROM responds to all physical addresses 0x1FC00000-0x1FFFFFFF,
# only the first 256 KB is currently implemented (0x1FC00000-0x1FC40000)
execute if score device_address mem matches 262144.. run tellraw @p [{"text":"ROM address ","color":"red"},{"score":{"name":"device_address","objective":"mem"},"color":"red"},{"text":" not implemented!","color":"red"}]

# Select coordinates
# World coordinates 0 0 0 - 255 255 7
scoreboard players operation x mem = device_address mem
scoreboard players operation x mem /= 2^10 constants
scoreboard players operation x mem %= 2^8 constants

scoreboard players operation y mem = device_address mem
scoreboard players operation y mem /= 2^2 constants
scoreboard players operation y mem %= 2^8 constants

scoreboard players operation z mem = device_address mem
scoreboard players operation z mem %= 2^2 constants
scoreboard players operation z mem *= 2^1 constants

summon minecraft:armor_stand 0 0 0 {CustomName:"\"mem_address\"",NoGravity:true}
execute store result entity @e[name=mem_address,limit=1] Pos[0] double 1 run scoreboard players get x mem
execute store result entity @e[name=mem_address,limit=1] Pos[1] double 1 run scoreboard players get y mem
execute store result entity @e[name=mem_address,limit=1] Pos[2] double 1 run scoreboard players get z mem

# Read value
function hardware:mem/util/read_word

kill @e[name=mem_address]
scoreboard players reset x mem
scoreboard players reset y mem
scoreboard players reset z mem

execute if score debug mem matches 2.. run tellraw @p [{"text":"ROM["},{"score":{"name":"device_address","objective":"mem"}},{"text":"]>"},{"score":{"name":"value","objective":"mem"}}]
