scoreboard players set passed test 0
scoreboard players set failed test 0

# Test 9 * 45 = 405
scoreboard players set value1 alu 9
scoreboard players set value2 alu 45
function hardware:alu/mul
execute if score result alu matches 405 run scoreboard players add passed test 1
execute unless score result alu matches 405 run scoreboard players add failed test 1
execute unless score result alu matches 405 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: 405","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:alu/mul_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:alu/mul_test failed!","color":"red"}]
