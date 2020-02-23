scoreboard players set passed test 0
scoreboard players set failed test 0

# Test 0 + 0 = 0
scoreboard players set value1 alu 0
scoreboard players set value2 alu 0
function mips32r6:alu/add
execute if score result alu matches 0 run scoreboard players add passed test 1
execute unless score result alu matches 0 run scoreboard players add failed test 1
execute unless score result alu matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Test 1 + 1 = 2
scoreboard players set value1 alu 1
scoreboard players set value2 alu 1
function mips32r6:alu/add
execute if score result alu matches 2 run scoreboard players add passed test 1
execute unless score result alu matches 2 run scoreboard players add failed test 1
execute unless score result alu matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Test 1 + 2 = 3
scoreboard players set value1 alu 1
scoreboard players set value2 alu 2
function mips32r6:alu/add
execute if score result alu matches 3 run scoreboard players add passed test 1
execute unless score result alu matches 3 run scoreboard players add failed test 1
execute unless score result alu matches 3 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: 3","color":"red"}]

# Test 1 + -2 = -1
scoreboard players set value1 alu 1
scoreboard players set value2 alu -2
function mips32r6:alu/add
execute if score result alu matches -1 run scoreboard players add passed test 1
execute unless score result alu matches -1 run scoreboard players add failed test 1
execute unless score result alu matches -1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: -1","color":"red"}]

# Test 2147483647 + 1 = -2147483648
scoreboard players set value1 alu 2147483647
scoreboard players set value2 alu 1
function mips32r6:alu/add
execute if score result alu matches -2147483648 run scoreboard players add passed test 1
execute unless score result alu matches -2147483648 run scoreboard players add failed test 1
execute unless score result alu matches -2147483648 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"result","objective":"alu"},"color":"red"},{"text":", Expected value: -2147483648","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/alu/add_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/alu/add_test failed!","color":"red"}]
