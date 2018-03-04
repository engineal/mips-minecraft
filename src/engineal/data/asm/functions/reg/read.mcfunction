execute if score address reg matches 0 run scoreboard players set value reg 0
execute if score address reg matches 1 run scoreboard players operation value reg = $at reg
execute if score address reg matches 2 run scoreboard players operation value reg = $v0 reg
execute if score address reg matches 3 run scoreboard players operation value reg = $v1 reg
execute if score address reg matches 4 run scoreboard players operation value reg = $a0 reg
execute if score address reg matches 5 run scoreboard players operation value reg = $a1 reg
execute if score address reg matches 6 run scoreboard players operation value reg = $a2 reg
execute if score address reg matches 7 run scoreboard players operation value reg = $a3 reg
execute if score address reg matches 8 run scoreboard players operation value reg = $t0 reg
execute if score address reg matches 9 run scoreboard players operation value reg = $t1 reg
execute if score address reg matches 10 run scoreboard players operation value reg = $t2 reg
execute if score address reg matches 11 run scoreboard players operation value reg = $t3 reg
execute if score address reg matches 12 run scoreboard players operation value reg = $t4 reg
execute if score address reg matches 13 run scoreboard players operation value reg = $t5 reg
execute if score address reg matches 14 run scoreboard players operation value reg = $t6 reg
execute if score address reg matches 15 run scoreboard players operation value reg = $t7 reg
execute if score address reg matches 16 run scoreboard players operation value reg = $s0 reg
execute if score address reg matches 17 run scoreboard players operation value reg = $s1 reg
execute if score address reg matches 18 run scoreboard players operation value reg = $s2 reg
execute if score address reg matches 19 run scoreboard players operation value reg = $s3 reg
execute if score address reg matches 10 run scoreboard players operation value reg = $s4 reg
execute if score address reg matches 21 run scoreboard players operation value reg = $s5 reg
execute if score address reg matches 22 run scoreboard players operation value reg = $s6 reg
execute if score address reg matches 23 run scoreboard players operation value reg = $s7 reg
execute if score address reg matches 24 run scoreboard players operation value reg = $t8 reg
execute if score address reg matches 25 run scoreboard players operation value reg = $t9 reg
execute if score address reg matches 26 run scoreboard players operation value reg = $k0 reg
execute if score address reg matches 27 run scoreboard players operation value reg = $k1 reg
execute if score address reg matches 28 run scoreboard players operation value reg = $gp reg
execute if score address reg matches 29 run scoreboard players operation value reg = $sp reg
execute if score address reg matches 30 run scoreboard players operation value reg = $fp reg
execute if score address reg matches 31 run scoreboard players operation value reg = $ra reg

execute if score debug reg matches 1 run tellraw @p [{"text":"reg["},{"score":{"name":"address","objective":"reg"}},{"text":"]->"},{"score":{"name":"value","objective":"reg"}}]
