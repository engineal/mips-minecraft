scoreboard players set value1 alu 45
scoreboard players set value2 alu 9
function asm:alu/sub
execute if score result alu matches 36 run tellraw @p {"text":"sub test passed!","color":"green"}
execute unless score result alu matches 36 run tellraw @p {"text":"sub test failed!","color":"red"}
