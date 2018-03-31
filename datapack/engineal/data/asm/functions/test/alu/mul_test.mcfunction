scoreboard players set operation alu 2
scoreboard players set value1 alu 9
scoreboard players set value2 alu 45
function asm:alu
execute if score result alu matches 405 run tellraw @p {"text":"mul test passed!","color":"green"}
execute unless score result alu matches 405 run tellraw @p {"text":"mul test failed!","color":"red"}
