scoreboard players operation result alu = value1 alu
scoreboard players operation result alu *= value2 alu

execute if score debug alu matches 1.. run tellraw @p [{"score":{"name":"value1","objective":"alu"}},{"text":"*"},{"score":{"name":"value2","objective":"alu"}},{"text":"="},{"score":{"name":"result","objective":"alu"}}]
