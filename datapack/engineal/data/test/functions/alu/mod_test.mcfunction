scoreboard players set value1 alu 45
scoreboard players set value2 alu 5
function hardware:alu/mod
execute if score result alu matches 0 run tellraw @p {"text":"mod test passed!","color":"green"}
execute unless score result alu matches 0 run tellraw @p {"text":"mod test failed!","color":"red"}
