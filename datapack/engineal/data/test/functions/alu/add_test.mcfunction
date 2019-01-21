scoreboard players set value1 alu 9
scoreboard players set value2 alu 45
function asm:alu/add
execute if score result alu matches 54 run tellraw @p {"text":"add test passed!","color":"green"}
execute unless score result alu matches 54 run tellraw @p {"text":"add test failed!","color":"red"}
