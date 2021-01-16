scoreboard players set passed test 0
scoreboard players set failed test 0

# Write cp0 index
# Write cp0 random
# Write cp0 entrylo
# Write cp0 context
# Write cp0 vaddr
# Write cp0 count
# Write cp0 entryhi
# Write cp0 compare
# Write cp0 status
# Write cp0 cause
# Write cp0 epc

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/cpu/instructions/cop0/mtc0_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/cpu/instructions/cop0/mtc0_test failed!","color":"red"}]
