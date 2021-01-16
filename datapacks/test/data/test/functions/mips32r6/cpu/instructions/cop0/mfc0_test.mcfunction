scoreboard players set passed test 0
scoreboard players set failed test 0

# Read cp0 index
data modify storage mips32r6:reg cp0.index set value 1234
scoreboard players set rt mips32r6_cpu 1
scoreboard players set rd mips32r6_cpu 0
function mips32r6:cpu/instructions/cop0/mfc0
execute store result score tmp_value test run data get storage mips32r6:reg GPR[1]
execute if score tmp_value test matches 1234 run scoreboard players add passed test 1
execute unless score tmp_value test matches 1234 run scoreboard players add failed test 1
execute unless score tmp_value test matches 1234 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Read cp0 random
# Read cp0 entrylo
# Read cp0 context
# Read cp0 vaddr
# Read cp0 count
# Read cp0 entryhi
# Read cp0 compare
# Read cp0 status
# Read cp0 cause
# Read cp0 epc

scoreboard players reset tmp_value test

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/cpu/instructions/cop0/mfc0_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/cpu/instructions/cop0/mfc0_test failed!","color":"red"}]
