scoreboard players set passed test 0
scoreboard players set failed test 0

# Test 20 / 4 = 5
scoreboard players set value1 alu 20
scoreboard players set value2 alu 4
function mips32r6:alu/div
execute if score result alu matches 5 run scoreboard players add passed test 1
execute unless score result alu matches 5 run scoreboard players add failed test 1
execute unless score result alu matches 5 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: 5","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/alu/div_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/alu/div_test failed!","color":"red"}]
