execute if score address mem matches 1024.. run tellraw @p [{"text":"address ","color":"red"},{"score":{"name":"address","objective":"mem"},"color":"red"},{"text":" out of range!","color":"red"}]

summon minecraft:armor_stand 0 0 0 {CustomName:"\"mem_address\"",NoGravity:true}
scoreboard players operation tmp_address mem = address mem
execute if score tmp_address mem matches 512.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~4 ~
execute if score tmp_address mem matches 512.. run scoreboard players remove tmp_address mem 512
execute if score tmp_address mem matches 256.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~2 ~
execute if score tmp_address mem matches 256.. run scoreboard players remove tmp_address mem 256
execute if score tmp_address mem matches 128.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~1 ~
execute if score tmp_address mem matches 128.. run scoreboard players remove tmp_address mem 128
execute if score tmp_address mem matches 64.. at @e[name=mem_address] run teleport @e[name=mem_address] ~16 ~ ~
execute if score tmp_address mem matches 64.. run scoreboard players remove tmp_address mem 64
execute if score tmp_address mem matches 32.. at @e[name=mem_address] run teleport @e[name=mem_address] ~8 ~ ~
execute if score tmp_address mem matches 32.. run scoreboard players remove tmp_address mem 32
execute if score tmp_address mem matches 16.. at @e[name=mem_address] run teleport @e[name=mem_address] ~4 ~ ~
execute if score tmp_address mem matches 16.. run scoreboard players remove tmp_address mem 16
execute if score tmp_address mem matches 8.. at @e[name=mem_address] run teleport @e[name=mem_address] ~2 ~ ~
execute if score tmp_address mem matches 8.. run scoreboard players remove tmp_address mem 8
execute if score tmp_address mem matches 4.. at @e[name=mem_address] run teleport @e[name=mem_address] ~1 ~ ~
execute if score tmp_address mem matches 4.. run scoreboard players remove tmp_address mem 4
execute if score tmp_address mem matches 0.. at @e[name=mem_address] run teleport @e[name=mem_address] ~ ~ ~

scoreboard players reset tmp_address mem
