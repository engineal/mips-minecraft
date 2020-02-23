# Translate physical memory address to device address
#
# Inputs:
# physical_address mem
#
# Outputs:
# device mem
# device_address mem

scoreboard players operation device_address mem = physical_address mem

execute if score physical_address mem matches ..532676607 run tellraw @p [{"text":"physical address ","color":"red"},{"score":{"name":"physical_address","objective":"mem"},"color":"red"},{"text":" not implemented!","color":"red"}]

# ROM
execute if score physical_address mem matches 532676608..536870911 run scoreboard players set device mem 0
execute if score physical_address mem matches 532676608..536870911 run scoreboard players remove device_address mem 532676608

execute if score physical_address mem matches 536870912.. run tellraw @p [{"text":"physical address ","color":"red"},{"score":{"name":"physical_address","objective":"mem"},"color":"red"},{"text":" not implemented!","color":"red"}]
