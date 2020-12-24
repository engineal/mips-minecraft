scoreboard players set result mips32r6_alu 0
scoreboard players set tmp_shift mips32r6_alu 1

function mips32r6:alu/xor/loop

# bit 31
execute if score value1 mips32r6_alu matches ..-1 if score value2 mips32r6_alu matches 0.. run scoreboard players operation result mips32r6_alu += tmp_shift mips32r6_alu
execute if score value1 mips32r6_alu matches 0.. if score value2 mips32r6_alu matches ..-1 run scoreboard players operation result mips32r6_alu += tmp_shift mips32r6_alu

scoreboard players reset tmp_shift mips32r6_alu
scoreboard players reset tmp_value1 mips32r6_alu
scoreboard players reset tmp_value2 mips32r6_alu

execute if score debug mips32r6_alu matches 1.. run tellraw @p [{"score":{"name":"value1","objective":"mips32r6_alu"}},{"text":"^"},{"score":{"name":"value2","objective":"mips32r6_alu"}},{"text":"="},{"score":{"name":"result","objective":"mips32r6_alu"}}]
