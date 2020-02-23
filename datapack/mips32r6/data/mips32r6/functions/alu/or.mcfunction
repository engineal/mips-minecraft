scoreboard players set result alu 0
scoreboard players set shift alu 1

function mips32r6:alu/or/loop

# bit 31
execute if score value1 alu matches ..-1 run scoreboard players operation result alu += shift alu
execute if score value1 alu matches 0.. if score value2 alu matches ..-1 run scoreboard players operation result alu += shift alu

scoreboard players reset shift alu
scoreboard players reset tmp_value1 alu
scoreboard players reset tmp_value2 alu

execute if score debug alu matches 1.. run tellraw @p [{"score":{"name":"value1","objective":"alu"}},{"text":"|"},{"score":{"name":"value2","objective":"alu"}},{"text":"="},{"score":{"name":"result","objective":"alu"}}]
