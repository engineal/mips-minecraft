
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value2 alu = value2 alu





scoreboard players operation result alu = value1 alu
scoreboard players operation result alu += value2 alu


scoreboard players reset tmp_value1 mem
scoreboard players reset tmp_value2 mem

execute if score debug alu matches 1.. run tellraw @p [{"score":{"name":"value1","objective":"alu"}},{"text":"&"},{"score":{"name":"value2","objective":"alu"}},{"text":"="},{"score":{"name":"result","objective":"alu"}}]
