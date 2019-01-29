execute if score address mem matches 262144.. run tellraw @p [{"text":"address ","color":"red"},{"score":{"name":"address","objective":"mem"},"color":"red"},{"text":" out of range!","color":"red"}]
execute if score address mem matches -2147221504..-1 run tellraw @p [{"text":"address ","color":"red"},{"score":{"name":"address","objective":"mem"},"color":"red"},{"text":" out of range!","color":"red"}]

summon minecraft:armor_stand 0 0 0 {CustomName:"\"mem_address\"",NoGravity:true}
scoreboard players operation tmp_address mem = address mem

execute if score tmp_address mem matches 0.. run scoreboard players set kernel mem 0
execute if score tmp_address mem matches ..-1 run scoreboard players set kernel mem 1

execute if score kernel mem matches 1 run tellraw @p [{"text":"kernel mem access","color":"yellow"}]
execute if score kernel mem matches 1 at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~16
# Remove 2147483648
execute if score kernel mem matches 1 run scoreboard players remove tmp_address mem 2147483647
execute if score kernel mem matches 1 run scoreboard players remove tmp_address mem 1

execute if score tmp_address mem matches 131072.. at @e[name=mem_address] run teleport @e[name=mem_address] ~128 ~ ~
execute if score tmp_address mem matches 131072.. run scoreboard players remove tmp_address mem 131072
execute if score tmp_address mem matches 65536.. at @e[name=mem_address] run teleport @e[name=mem_address] ~64 ~ ~
execute if score tmp_address mem matches 65536.. run scoreboard players remove tmp_address mem 65536
execute if score tmp_address mem matches 32768.. at @e[name=mem_address] run teleport @e[name=mem_address] ~32 ~ ~
execute if score tmp_address mem matches 32768.. run scoreboard players remove tmp_address mem 32768
execute if score tmp_address mem matches 16384.. at @e[name=mem_address] run teleport @e[name=mem_address] ~16 ~ ~
execute if score tmp_address mem matches 16384.. run scoreboard players remove tmp_address mem 16384
execute if score tmp_address mem matches 8192.. at @e[name=mem_address] run teleport @e[name=mem_address] ~8 ~ ~
execute if score tmp_address mem matches 8192.. run scoreboard players remove tmp_address mem 8192
execute if score tmp_address mem matches 4096.. at @e[name=mem_address] run teleport @e[name=mem_address] ~4 ~ ~
execute if score tmp_address mem matches 4096.. run scoreboard players remove tmp_address mem 4096
execute if score tmp_address mem matches 2048.. at @e[name=mem_address] run teleport @e[name=mem_address] ~2 ~ ~
execute if score tmp_address mem matches 2048.. run scoreboard players remove tmp_address mem 2048
execute if score tmp_address mem matches 1024.. at @e[name=mem_address] run teleport @e[name=mem_address] ~1 ~ ~
execute if score tmp_address mem matches 1024.. run scoreboard players remove tmp_address mem 1024
execute if score tmp_address mem matches 512.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~128 ~
execute if score tmp_address mem matches 512.. run scoreboard players remove tmp_address mem 512
execute if score tmp_address mem matches 256.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~64 ~
execute if score tmp_address mem matches 256.. run scoreboard players remove tmp_address mem 256
execute if score tmp_address mem matches 128.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~32 ~
execute if score tmp_address mem matches 128.. run scoreboard players remove tmp_address mem 128
execute if score tmp_address mem matches 64.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~16 ~
execute if score tmp_address mem matches 64.. run scoreboard players remove tmp_address mem 64
execute if score tmp_address mem matches 32.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~8 ~
execute if score tmp_address mem matches 32.. run scoreboard players remove tmp_address mem 32
execute if score tmp_address mem matches 16.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~4 ~
execute if score tmp_address mem matches 16.. run scoreboard players remove tmp_address mem 16
execute if score tmp_address mem matches 8.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~2 ~
execute if score tmp_address mem matches 8.. run scoreboard players remove tmp_address mem 8
execute if score tmp_address mem matches 4.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~1 ~
execute if score tmp_address mem matches 4.. run scoreboard players remove tmp_address mem 4
execute if score tmp_address mem matches 2.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~4
execute if score tmp_address mem matches 2.. run scoreboard players remove tmp_address mem 2
execute if score tmp_address mem matches 1.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~2
execute if score tmp_address mem matches 1.. run scoreboard players remove tmp_address mem 1

scoreboard players reset tmp_address mem
