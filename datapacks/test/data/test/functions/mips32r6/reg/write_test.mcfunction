scoreboard players set passed test 0
scoreboard players set failed test 0

data modify storage mips32r6:reg GPR set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

# Write $zero
scoreboard players set address mips32r6_reg 0
scoreboard players set value mips32r6_reg 1
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[0]
execute if score tmp_value mips32r6_reg matches 0 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 0 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Write $at
scoreboard players set address mips32r6_reg 1
scoreboard players set value mips32r6_reg 2
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[1]
execute if score tmp_value mips32r6_reg matches 2 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 2 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Write $v0
scoreboard players set address mips32r6_reg 2
scoreboard players set value mips32r6_reg 4
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[2]
execute if score tmp_value mips32r6_reg matches 4 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 4 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Write $v1
scoreboard players set address mips32r6_reg 3
scoreboard players set value mips32r6_reg 8
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[3]
execute if score tmp_value mips32r6_reg matches 8 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 8 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 8 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 8","color":"red"}]

# Write $a0
scoreboard players set address mips32r6_reg 4
scoreboard players set value mips32r6_reg 16
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[4]
execute if score tmp_value mips32r6_reg matches 16 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 16 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 16 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 16","color":"red"}]

# Write $a1
scoreboard players set address mips32r6_reg 5
scoreboard players set value mips32r6_reg 32
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[5]
execute if score tmp_value mips32r6_reg matches 32 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 32 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 32 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 32","color":"red"}]

# Write $a2
scoreboard players set address mips32r6_reg 6
scoreboard players set value mips32r6_reg 64
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[6]
execute if score tmp_value mips32r6_reg matches 64 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 64 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 64 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 64","color":"red"}]

# Write $a3
scoreboard players set address mips32r6_reg 7
scoreboard players set value mips32r6_reg 128
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[7]
execute if score tmp_value mips32r6_reg matches 128 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 128 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 128 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 128","color":"red"}]

# Write $t0
scoreboard players set address mips32r6_reg 8
scoreboard players set value mips32r6_reg 256
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[8]
execute if score tmp_value mips32r6_reg matches 256 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 256 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 256 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 256","color":"red"}]

# Write $t1
scoreboard players set address mips32r6_reg 9
scoreboard players set value mips32r6_reg 512
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[9]
execute if score tmp_value mips32r6_reg matches 512 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 512 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 512 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 512","color":"red"}]

# Write $t2
scoreboard players set address mips32r6_reg 10
scoreboard players set value mips32r6_reg 1024
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[10]
execute if score tmp_value mips32r6_reg matches 1024 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 1024 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 1024 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 1024","color":"red"}]

# Write $t3
scoreboard players set address mips32r6_reg 11
scoreboard players set value mips32r6_reg 2048
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[11]
execute if score tmp_value mips32r6_reg matches 2048 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 2048 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 2048 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 2048","color":"red"}]

# Write $t4
scoreboard players set address mips32r6_reg 12
scoreboard players set value mips32r6_reg 4096
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[12]
execute if score tmp_value mips32r6_reg matches 4096 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 4096 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 4096 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 4096","color":"red"}]

# Write $t5
scoreboard players set address mips32r6_reg 13
scoreboard players set value mips32r6_reg 8192
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[13]
execute if score tmp_value mips32r6_reg matches 8192 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 8192 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 8192 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 8192","color":"red"}]

# Write $t6
scoreboard players set address mips32r6_reg 14
scoreboard players set value mips32r6_reg 16384
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[14]
execute if score tmp_value mips32r6_reg matches 16384 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 16384 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 16384 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 16384","color":"red"}]

# Write $t7
scoreboard players set address mips32r6_reg 15
scoreboard players set value mips32r6_reg 32768
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[15]
execute if score tmp_value mips32r6_reg matches 32768 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 32768 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 32768 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 32768","color":"red"}]

# Write $s0
scoreboard players set address mips32r6_reg 16
scoreboard players set value mips32r6_reg 65536
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[16]
execute if score tmp_value mips32r6_reg matches 65536 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 65536 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 65536 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 65536","color":"red"}]

# Write $s1
scoreboard players set address mips32r6_reg 17
scoreboard players set value mips32r6_reg 131072
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[17]
execute if score tmp_value mips32r6_reg matches 131072 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 131072 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 131072 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 131072","color":"red"}]

# Write $s2
scoreboard players set address mips32r6_reg 18
scoreboard players set value mips32r6_reg 262144
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[18]
execute if score tmp_value mips32r6_reg matches 262144 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 262144 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 262144 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 262144","color":"red"}]

# Write $s3
scoreboard players set address mips32r6_reg 19
scoreboard players set value mips32r6_reg 524288
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[19]
execute if score tmp_value mips32r6_reg matches 524288 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 524288 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 524288 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 524288","color":"red"}]

# Write $s4
scoreboard players set address mips32r6_reg 20
scoreboard players set value mips32r6_reg 1048576
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[20]
execute if score tmp_value mips32r6_reg matches 1048576 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 1048576 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 1048576 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 1048576","color":"red"}]

# Write $s5
scoreboard players set address mips32r6_reg 21
scoreboard players set value mips32r6_reg 2097152
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[21]
execute if score tmp_value mips32r6_reg matches 2097152 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 2097152 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 2097152 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 2097152","color":"red"}]

# Write $s6
scoreboard players set address mips32r6_reg 22
scoreboard players set value mips32r6_reg 4194304
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[22]
execute if score tmp_value mips32r6_reg matches 4194304 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 4194304 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 4194304 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 4194304","color":"red"}]

# Write $s7
scoreboard players set address mips32r6_reg 23
scoreboard players set value mips32r6_reg 8388608
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[23]
execute if score tmp_value mips32r6_reg matches 8388608 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 8388608 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 8388608 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 8388608","color":"red"}]

# Write $t8
scoreboard players set address mips32r6_reg 24
scoreboard players set value mips32r6_reg 16777216
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[24]
execute if score tmp_value mips32r6_reg matches 16777216 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 16777216 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 16777216 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 16777216","color":"red"}]

# Write $t9
scoreboard players set address mips32r6_reg 25
scoreboard players set value mips32r6_reg 33554432
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[25]
execute if score tmp_value mips32r6_reg matches 33554432 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 33554432 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 33554432 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 33554432","color":"red"}]

# Write $k0
scoreboard players set address mips32r6_reg 26
scoreboard players set value mips32r6_reg 67108864
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[26]
execute if score tmp_value mips32r6_reg matches 67108864 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 67108864 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 67108864 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 67108864","color":"red"}]

# Write $k1
scoreboard players set address mips32r6_reg 27
scoreboard players set value mips32r6_reg 134217728
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[27]
execute if score tmp_value mips32r6_reg matches 134217728 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 134217728 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 134217728 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 134217728","color":"red"}]

# Write $gp
scoreboard players set address mips32r6_reg 28
scoreboard players set value mips32r6_reg 268435456
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[28]
execute if score tmp_value mips32r6_reg matches 268435456 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 268435456 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 268435456 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 268435456","color":"red"}]

# Write $sp
scoreboard players set address mips32r6_reg 29
scoreboard players set value mips32r6_reg 536870912
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[29]
execute if score tmp_value mips32r6_reg matches 536870912 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 536870912 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 536870912 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 536870912","color":"red"}]

# Write $fp
scoreboard players set address mips32r6_reg 30
scoreboard players set value mips32r6_reg 1073741824
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[30]
execute if score tmp_value mips32r6_reg matches 1073741824 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches 1073741824 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches 1073741824 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: 1073741824","color":"red"}]

# Write $ra
scoreboard players set address mips32r6_reg 31
scoreboard players set value mips32r6_reg -2147483648
function mips32r6:reg/write
execute store result score tmp_value mips32r6_reg run data get storage mips32r6:reg GPR[31]
execute if score tmp_value mips32r6_reg matches -2147483648 run scoreboard players add passed test 1
execute unless score tmp_value mips32r6_reg matches -2147483648 run scoreboard players add failed test 1
execute unless score tmp_value mips32r6_reg matches -2147483648 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"tmp_value","objective":"mips32r6_reg"},"color":"red"},{"text":", Expected value: -2147483648","color":"red"}]

scoreboard players reset tmp_value mips32r6_reg

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/reg/write_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/reg/write_test failed!","color":"red"}]
