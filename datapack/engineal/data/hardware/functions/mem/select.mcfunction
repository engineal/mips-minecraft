execute if score address mem matches 262144.. run tellraw @p [{"text":"address ","color":"red"},{"score":{"name":"address","objective":"mem"},"color":"red"},{"text":" out of range!","color":"red"}]
execute if score address mem matches -2147221504..-1 run tellraw @p [{"text":"address ","color":"red"},{"score":{"name":"address","objective":"mem"},"color":"red"},{"text":" out of range!","color":"red"}]

scoreboard players set kernel mem 0
execute if score address mem matches ..-1 run scoreboard players set kernel mem 1
execute if score kernel mem matches 1 run tellraw @p [{"text":"kernel mem access","color":"yellow"}]

scoreboard players operation x mem = address mem
scoreboard players operation x mem /= 2^10 constants
scoreboard players operation x mem %= 2^8 constants

scoreboard players operation y mem = address mem
scoreboard players operation y mem /= 2^2 constants
scoreboard players operation y mem %= 2^8 constants

scoreboard players operation z mem = address mem
scoreboard players operation z mem %= 2^2 constants
scoreboard players operation z mem *= 2^1 constants
execute if score kernel mem matches 1 run scoreboard players add z mem 16

summon minecraft:armor_stand 0 0 0 {CustomName:"\"mem_address\"",NoGravity:true}
execute store result entity @e[name=mem_address,limit=1] Pos[0] double 1 run scoreboard players get x mem
execute store result entity @e[name=mem_address,limit=1] Pos[1] double 1 run scoreboard players get y mem
execute store result entity @e[name=mem_address,limit=1] Pos[2] double 1 run scoreboard players get z mem

scoreboard players reset x mem
scoreboard players reset y mem
scoreboard players reset z mem
