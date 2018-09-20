scoreboard players set operation alu 3
scoreboard players set value1 alu 20
scoreboard players set value2 alu 4
function asm:alu
execute if score result alu matches 5 run tellraw @p {"text":"div test passed!","color":"green"}
execute unless score result alu matches 5 run tellraw @p {"text":"div test failed!","color":"red"}
