# Handle LCD memory access
#
# Inputs:
# physical_address mips32r6_mem
# length mips32r6_mem
# write mips32r6_mem
# value mips32r6_mem
#
# Outputs:
# value mips32r6_mem

scoreboard players operation device_address lcd = physical_address mips32r6_mem
scoreboard players remove device_address lcd 520094720

execute if score device_address lcd matches ..-1 run tellraw @p [{"text":"LCD address ","color":"red"},{"score":{"name":"device_address","objective":"lcd"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address lcd matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score device_address lcd matches 0 run function lcd:ctl
execute if score device_address lcd matches 1..7 run tellraw @p [{"text":"LCD address ","color":"red"},{"score":{"name":"device_address","objective":"lcd"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address lcd matches 1..7 run scoreboard players set running mips32r6_tick 0
execute if score device_address lcd matches 8 run function lcd:data
execute if score device_address lcd matches 9..15 run tellraw @p [{"text":"LCD address ","color":"red"},{"score":{"name":"device_address","objective":"lcd"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address lcd matches 9..15 run scoreboard players set running mips32r6_tick 0
execute if score device_address lcd matches 16 run function lcd:cpld_status
execute if score device_address lcd matches 17..23 run tellraw @p [{"text":"LCD address ","color":"red"},{"score":{"name":"device_address","objective":"lcd"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address lcd matches 17..23 run scoreboard players set running mips32r6_tick 0
execute if score device_address lcd matches 24 run function lcd:cpld_data
execute if score device_address lcd matches 25.. run tellraw @p [{"text":"LCD address ","color":"red"},{"score":{"name":"device_address","objective":"lcd"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score device_address lcd matches 25.. run scoreboard players set running mips32r6_tick 0

scoreboard players add handled mips32r6_mem 1

# TODO: remove (for debuging)
scoreboard players set running mips32r6_tick 0
