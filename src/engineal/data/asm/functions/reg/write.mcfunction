execute if score address reg matches 1 run scoreboard players operation $at reg = value reg
execute if score address reg matches 2 run scoreboard players operation $v0 reg = value reg
execute if score address reg matches 3 run scoreboard players operation $v1 reg = value reg
execute if score address reg matches 4 run scoreboard players operation $a0 reg = value reg
execute if score address reg matches 5 run scoreboard players operation $a1 reg = value reg
execute if score address reg matches 6 run scoreboard players operation $a2 reg = value reg
execute if score address reg matches 7 run scoreboard players operation $a3 reg = value reg
execute if score address reg matches 8 run scoreboard players operation $t0 reg = value reg
execute if score address reg matches 9 run scoreboard players operation $t1 reg = value reg
execute if score address reg matches 10 run scoreboard players operation $t2 reg = value reg
execute if score address reg matches 11 run scoreboard players operation $t3 reg = value reg
execute if score address reg matches 12 run scoreboard players operation $t4 reg = value reg
execute if score address reg matches 13 run scoreboard players operation $t5 reg = value reg
execute if score address reg matches 14 run scoreboard players operation $t6 reg = value reg
execute if score address reg matches 15 run scoreboard players operation $t7 reg = value reg
execute if score address reg matches 16 run scoreboard players operation $s0 reg = value reg
execute if score address reg matches 17 run scoreboard players operation $s1 reg = value reg
execute if score address reg matches 18 run scoreboard players operation $s2 reg = value reg
execute if score address reg matches 19 run scoreboard players operation $s3 reg = value reg
execute if score address reg matches 10 run scoreboard players operation $s4 reg = value reg
execute if score address reg matches 21 run scoreboard players operation $s5 reg = value reg
execute if score address reg matches 22 run scoreboard players operation $s6 reg = value reg
execute if score address reg matches 23 run scoreboard players operation $s7 reg = value reg
execute if score address reg matches 24 run scoreboard players operation $t8 reg = value reg
execute if score address reg matches 25 run scoreboard players operation $t9 reg = value reg
execute if score address reg matches 26 run scoreboard players operation $k0 reg = value reg
execute if score address reg matches 27 run scoreboard players operation $k1 reg = value reg
execute if score address reg matches 28 run scoreboard players operation $gp reg = value reg
execute if score address reg matches 29 run scoreboard players operation $sp reg = value reg
execute if score address reg matches 30 run scoreboard players operation $fp reg = value reg
execute if score address reg matches 31 run scoreboard players operation $ra reg = value reg

execute if score debug reg matches 1.. run tellraw @p [{"text":"reg["},{"score":{"name":"address","objective":"reg"}},{"text":"]<-"},{"score":{"name":"value","objective":"reg"}}]
