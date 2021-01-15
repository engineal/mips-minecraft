scoreboard players set passed test 0
scoreboard players set failed test 0

# Test address 0x00000000
scoreboard players set address mips32r6_mem 0
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 0 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 0 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Test address 0x00000001
scoreboard players set address mips32r6_mem 1
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Test address 0x7FFFFFFF
scoreboard players set address mips32r6_mem 2147483647
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 2147483647 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 2147483647 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 2147483647 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 2147483647","color":"red"}]

# Test address 0x80000000
scoreboard players set address mips32r6_mem -2147483648
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 0 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 0 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Test address 0x80000001
scoreboard players set address mips32r6_mem -2147483647
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Test address 0x9FFFFFFF
scoreboard players set address mips32r6_mem -1610612737
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 536870911 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 536870911 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 536870911 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 536870911","color":"red"}]

# Test address 0xA0000000
scoreboard players set address mips32r6_mem -1610612736
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 0 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 0 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Test address 0xA0000001
scoreboard players set address mips32r6_mem -1610612735
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 1 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 1 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 1","color":"red"}]

# Test address 0xBFFFFFFF
scoreboard players set address mips32r6_mem -1073741825
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches 536870911 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches 536870911 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches 536870911 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: 536870911","color":"red"}]

# Test address 0xC0000000
scoreboard players set address mips32r6_mem -1073741824
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches -1073741824 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches -1073741824 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches -1073741824 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: -1073741824","color":"red"}]

# Test address 0xC0000001
scoreboard players set address mips32r6_mem -1073741823
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches -1073741823 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches -1073741823 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches -1073741823 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: -1073741823","color":"red"}]

# Test address 0xFFFFFFFF
scoreboard players set address mips32r6_mem -1
function mips32r6:mem/translate_address
execute if score physical_address mips32r6_mem matches -1 run scoreboard players add passed test 1
execute unless score physical_address mips32r6_mem matches -1 run scoreboard players add failed test 1
execute unless score physical_address mips32r6_mem matches -1 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"physical_address","objective":"mips32r6_mem"},"color":"red"},{"text":", Expected value: -1","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/mem/translate_address_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/mem/translate_address_test failed!","color":"red"}]
