scoreboard players set address mem 0
scoreboard players set value mem -1
function asm:mem/write

scoreboard players set address mem 0
scoreboard players set value mem 0
function asm:mem/read

execute if score value mem matches -1 run tellraw @p {"text":"mem test passed!","color":"green"}
execute unless score value mem matches -1 run tellraw @p {"text":"mem test failed!","color":"red"}
