scoreboard players set value1 alu 0
scoreboard players set value2 alu 0
function hardware:alu/add
execute if score result alu matches 0 run tellraw @p {"text":"add test passed!","color":"green"}
execute unless score result alu matches 0 run tellraw @p {"text":"add test failed!","color":"red"}

scoreboard players set value1 alu 1
scoreboard players set value2 alu 1
function hardware:alu/add
execute if score result alu matches 2 run tellraw @p {"text":"add test passed!","color":"green"}
execute unless score result alu matches 2 run tellraw @p {"text":"add test failed!","color":"red"}

scoreboard players set value1 alu 1
scoreboard players set value2 alu 2
function hardware:alu/add
execute if score result alu matches 3 run tellraw @p {"text":"add test passed!","color":"green"}
execute unless score result alu matches 3 run tellraw @p {"text":"add test failed!","color":"red"}

scoreboard players set value1 alu 1
scoreboard players set value2 alu -2
function hardware:alu/add
execute if score result alu matches -1 run tellraw @p {"text":"add test passed!","color":"green"}
execute unless score result alu matches -1 run tellraw @p {"text":"add test failed!","color":"red"}

scoreboard players set value1 alu 2147483647
scoreboard players set value2 alu 1
function hardware:alu/add
execute if score result alu matches -2147483648 run tellraw @p {"text":"add test passed!","color":"green"}
execute unless score result alu matches -2147483648 run tellraw @p {"text":"add test failed!","color":"red"}
