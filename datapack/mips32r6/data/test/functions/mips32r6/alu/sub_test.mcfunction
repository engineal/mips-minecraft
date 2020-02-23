scoreboard players set passed test 0
scoreboard players set failed test 0

# Test 45 - 9 = 36
scoreboard players set value1 alu 45
scoreboard players set value2 alu 9
function mips32r6:alu/sub
execute if score result alu matches 36 run scoreboard players add passed test 1
execute unless score result alu matches 36 run scoreboard players add failed test 1
execute unless score result alu matches 36 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: 36","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/alu/sub_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/alu/sub_test failed!","color":"red"}]
