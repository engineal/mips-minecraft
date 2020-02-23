scoreboard players operation tmp mips32r6_reg = $a0 mips32r6_reg
scoreboard players operation tmp mips32r6_reg %= 10 constants

summon minecraft:armor_stand 5 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}

function vga:char/clear
execute if score $a0 mips32r6_reg matches ..-1 run tellraw @p [{"score":{"name":"$a0","objective":"mips32r6_reg"},"color":"red"},{"text":" is out of range!","color":"red"}]
execute if score tmp mips32r6_reg matches 0 run function vga:char/30
execute if score tmp mips32r6_reg matches 1 run function vga:char/31
execute if score tmp mips32r6_reg matches 2 run function vga:char/32
execute if score tmp mips32r6_reg matches 3 run function vga:char/33
execute if score tmp mips32r6_reg matches 4 run function vga:char/34
execute if score tmp mips32r6_reg matches 5 run function vga:char/35
execute if score tmp mips32r6_reg matches 6 run function vga:char/36
execute if score tmp mips32r6_reg matches 7 run function vga:char/37
execute if score tmp mips32r6_reg matches 8 run function vga:char/38
execute if score tmp mips32r6_reg matches 9 run function vga:char/39

scoreboard players operation tmp mips32r6_reg = $a0 mips32r6_reg
scoreboard players operation tmp mips32r6_reg /= 10 constants
scoreboard players operation tmp mips32r6_reg %= 10 constants

teleport @e[name=char_pos] 11 11 -10

function vga:char/clear
execute if score tmp mips32r6_reg matches 0 run function vga:char/30
execute if score tmp mips32r6_reg matches 1 run function vga:char/31
execute if score tmp mips32r6_reg matches 2 run function vga:char/32
execute if score tmp mips32r6_reg matches 3 run function vga:char/33
execute if score tmp mips32r6_reg matches 4 run function vga:char/34
execute if score tmp mips32r6_reg matches 5 run function vga:char/35
execute if score tmp mips32r6_reg matches 6 run function vga:char/36
execute if score tmp mips32r6_reg matches 7 run function vga:char/37
execute if score tmp mips32r6_reg matches 8 run function vga:char/38
execute if score tmp mips32r6_reg matches 9 run function vga:char/39
execute if score $a0 mips32r6_reg matches 100.. run tellraw @p [{"score":{"name":"$a0","objective":"mips32r6_reg"},"color":"red"},{"text":" is out of range!","color":"red"}]

scoreboard players reset tmp mips32r6_reg
kill @e[name=char_pos]

tellraw @p [{"text":"syscall print_int "},{"score":{"name":"$a0","objective":"mips32r6_reg"}}]