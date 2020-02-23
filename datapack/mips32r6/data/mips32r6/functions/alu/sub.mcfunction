scoreboard players operation result mips32r6_alu = value1 mips32r6_alu
scoreboard players operation result mips32r6_alu -= value2 mips32r6_alu

execute if score debug mips32r6_alu matches 1.. run tellraw @p [{"score":{"name":"value1","objective":"mips32r6_alu"}},{"text":"-"},{"score":{"name":"value2","objective":"mips32r6_alu"}},{"text":"="},{"score":{"name":"result","objective":"mips32r6_alu"}}]
