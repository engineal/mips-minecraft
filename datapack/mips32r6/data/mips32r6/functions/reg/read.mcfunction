execute if score address mips32r6_reg matches 0 run scoreboard players set value mips32r6_reg 0
execute if score address mips32r6_reg matches 1 run scoreboard players operation value mips32r6_reg = $at mips32r6_reg
execute if score address mips32r6_reg matches 2 run scoreboard players operation value mips32r6_reg = $v0 mips32r6_reg
execute if score address mips32r6_reg matches 3 run scoreboard players operation value mips32r6_reg = $v1 mips32r6_reg
execute if score address mips32r6_reg matches 4 run scoreboard players operation value mips32r6_reg = $a0 mips32r6_reg
execute if score address mips32r6_reg matches 5 run scoreboard players operation value mips32r6_reg = $a1 mips32r6_reg
execute if score address mips32r6_reg matches 6 run scoreboard players operation value mips32r6_reg = $a2 mips32r6_reg
execute if score address mips32r6_reg matches 7 run scoreboard players operation value mips32r6_reg = $a3 mips32r6_reg
execute if score address mips32r6_reg matches 8 run scoreboard players operation value mips32r6_reg = $t0 mips32r6_reg
execute if score address mips32r6_reg matches 9 run scoreboard players operation value mips32r6_reg = $t1 mips32r6_reg
execute if score address mips32r6_reg matches 10 run scoreboard players operation value mips32r6_reg = $t2 mips32r6_reg
execute if score address mips32r6_reg matches 11 run scoreboard players operation value mips32r6_reg = $t3 mips32r6_reg
execute if score address mips32r6_reg matches 12 run scoreboard players operation value mips32r6_reg = $t4 mips32r6_reg
execute if score address mips32r6_reg matches 13 run scoreboard players operation value mips32r6_reg = $t5 mips32r6_reg
execute if score address mips32r6_reg matches 14 run scoreboard players operation value mips32r6_reg = $t6 mips32r6_reg
execute if score address mips32r6_reg matches 15 run scoreboard players operation value mips32r6_reg = $t7 mips32r6_reg
execute if score address mips32r6_reg matches 16 run scoreboard players operation value mips32r6_reg = $s0 mips32r6_reg
execute if score address mips32r6_reg matches 17 run scoreboard players operation value mips32r6_reg = $s1 mips32r6_reg
execute if score address mips32r6_reg matches 18 run scoreboard players operation value mips32r6_reg = $s2 mips32r6_reg
execute if score address mips32r6_reg matches 19 run scoreboard players operation value mips32r6_reg = $s3 mips32r6_reg
execute if score address mips32r6_reg matches 10 run scoreboard players operation value mips32r6_reg = $s4 mips32r6_reg
execute if score address mips32r6_reg matches 21 run scoreboard players operation value mips32r6_reg = $s5 mips32r6_reg
execute if score address mips32r6_reg matches 22 run scoreboard players operation value mips32r6_reg = $s6 mips32r6_reg
execute if score address mips32r6_reg matches 23 run scoreboard players operation value mips32r6_reg = $s7 mips32r6_reg
execute if score address mips32r6_reg matches 24 run scoreboard players operation value mips32r6_reg = $t8 mips32r6_reg
execute if score address mips32r6_reg matches 25 run scoreboard players operation value mips32r6_reg = $t9 mips32r6_reg
execute if score address mips32r6_reg matches 26 run scoreboard players operation value mips32r6_reg = $k0 mips32r6_reg
execute if score address mips32r6_reg matches 27 run scoreboard players operation value mips32r6_reg = $k1 mips32r6_reg
execute if score address mips32r6_reg matches 28 run scoreboard players operation value mips32r6_reg = $gp mips32r6_reg
execute if score address mips32r6_reg matches 29 run scoreboard players operation value mips32r6_reg = $sp mips32r6_reg
execute if score address mips32r6_reg matches 30 run scoreboard players operation value mips32r6_reg = $fp mips32r6_reg
execute if score address mips32r6_reg matches 31 run scoreboard players operation value mips32r6_reg = $ra mips32r6_reg

execute if score debug mips32r6_reg matches 1.. run tellraw @p [{"text":"mips32r6_reg["},{"score":{"name":"address","objective":"mips32r6_reg"}},{"text":"]->"},{"score":{"name":"value","objective":"mips32r6_reg"}}]
