scoreboard players set passed test 0
scoreboard players set failed test 0

data modify storage mips32r6:reg GPR set value [0,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864,134217728,268435456,536870912,1073741824,-2147483648]

# Read $zero
scoreboard players set index mips32r6_gpr 0
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 0 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 0 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 0 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 0","color":"red"}]

# Read $at
scoreboard players set index mips32r6_gpr 1
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 2 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 2 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 2 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 2","color":"red"}]

# Read $v0
scoreboard players set index mips32r6_gpr 2
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 4 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 4 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 4 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 4","color":"red"}]

# Read $v1
scoreboard players set index mips32r6_gpr 3
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 8 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 8 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 8 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 8","color":"red"}]

# Read $a0
scoreboard players set index mips32r6_gpr 4
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 16 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 16 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 16 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 16","color":"red"}]

# Read $a1
scoreboard players set index mips32r6_gpr 5
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 32 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 32 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 32 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 32","color":"red"}]

# Read $a2
scoreboard players set index mips32r6_gpr 6
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 64 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 64 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 64 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 64","color":"red"}]

# Read $a3
scoreboard players set index mips32r6_gpr 7
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 128 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 128 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 128 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 128","color":"red"}]

# Read $t0
scoreboard players set index mips32r6_gpr 8
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 256 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 256 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 256 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 256","color":"red"}]

# Read $t1
scoreboard players set index mips32r6_gpr 9
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 512 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 512 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 512 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 512","color":"red"}]

# Read $t2
scoreboard players set index mips32r6_gpr 10
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 1024 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 1024 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 1024 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 1024","color":"red"}]

# Read $t3
scoreboard players set index mips32r6_gpr 11
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 2048 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 2048 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 2048 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 2048","color":"red"}]

# Read $t4
scoreboard players set index mips32r6_gpr 12
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 4096 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 4096 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 4096 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 4096","color":"red"}]

# Read $t5
scoreboard players set index mips32r6_gpr 13
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 8192 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 8192 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 8192 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 8192","color":"red"}]

# Read $t6
scoreboard players set index mips32r6_gpr 14
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 16384 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 16384 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 16384 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 16384","color":"red"}]

# Read $t7
scoreboard players set index mips32r6_gpr 15
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 32768 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 32768 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 32768 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 32768","color":"red"}]

# Read $s0
scoreboard players set index mips32r6_gpr 16
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 65536 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 65536 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 65536 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 65536","color":"red"}]

# Read $s1
scoreboard players set index mips32r6_gpr 17
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 131072 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 131072 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 131072 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 131072","color":"red"}]

# Read $s2
scoreboard players set index mips32r6_gpr 18
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 262144 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 262144 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 262144 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 262144","color":"red"}]

# Read $s3
scoreboard players set index mips32r6_gpr 19
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 524288 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 524288 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 524288 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 524288","color":"red"}]

# Read $s4
scoreboard players set index mips32r6_gpr 20
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 1048576 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 1048576 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 1048576 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 1048576","color":"red"}]

# Read $s5
scoreboard players set index mips32r6_gpr 21
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 2097152 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 2097152 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 2097152 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 2097152","color":"red"}]

# Read $s6
scoreboard players set index mips32r6_gpr 22
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 4194304 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 4194304 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 4194304 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 4194304","color":"red"}]

# Read $s7
scoreboard players set index mips32r6_gpr 23
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 8388608 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 8388608 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 8388608 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 8388608","color":"red"}]

# Read $t8
scoreboard players set index mips32r6_gpr 24
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 16777216 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 16777216 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 16777216 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 16777216","color":"red"}]

# Read $t9
scoreboard players set index mips32r6_gpr 25
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 33554432 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 33554432 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 33554432 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 33554432","color":"red"}]

# Read $k0
scoreboard players set index mips32r6_gpr 26
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 67108864 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 67108864 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 67108864 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 67108864","color":"red"}]

# Read $k1
scoreboard players set index mips32r6_gpr 27
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 134217728 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 134217728 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 134217728 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 134217728","color":"red"}]

# Read $gp
scoreboard players set index mips32r6_gpr 28
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 268435456 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 268435456 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 268435456 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 268435456","color":"red"}]

# Read $sp
scoreboard players set index mips32r6_gpr 29
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 536870912 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 536870912 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 536870912 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 536870912","color":"red"}]

# Read $fp
scoreboard players set index mips32r6_gpr 30
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches 1073741824 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches 1073741824 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches 1073741824 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: 1073741824","color":"red"}]

# Read $ra
scoreboard players set index mips32r6_gpr 31
function mips32r6:gpr/read
execute if score value mips32r6_gpr matches -2147483648 run scoreboard players add passed test 1
execute unless score value mips32r6_gpr matches -2147483648 run scoreboard players add failed test 1
execute unless score value mips32r6_gpr matches -2147483648 run tellraw @p [{"text":"Actual value: ","color":"red"},{"score":{"name":"value","objective":"mips32r6_gpr"},"color":"red"},{"text":", Expected value: -2147483648","color":"red"}]

execute if score passed test matches 1.. run tellraw @p [{"score":{"name":"passed","objective":"test"},"color":"green"},{"text":" test(s) in test:mips32r6/gpr/read_test passed!","color":"green"}]
execute if score failed test matches 1.. run tellraw @p [{"score":{"name":"failed","objective":"test"},"color":"red"},{"text":" test(s) in test:mips32r6/gpr/read_test failed!","color":"red"}]
