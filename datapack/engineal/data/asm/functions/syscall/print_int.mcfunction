scoreboard players operation tmp reg = $a0 reg
scoreboard players operation tmp reg %= 10 constants

summon minecraft:armor_stand 0 0 -10 {CustomName:"\"char_pos\"",NoGravity:true}

function asm:vga/char/clear
execute if score tmp reg matches 0 run function asm:vga/char/0
execute if score tmp reg matches 1 run function asm:vga/char/1
execute if score tmp reg matches 2 run function asm:vga/char/2
execute if score tmp reg matches 3 run function asm:vga/char/3
execute if score tmp reg matches 4 run function asm:vga/char/4
execute if score tmp reg matches 5 run function asm:vga/char/5
execute if score tmp reg matches 6 run function asm:vga/char/6
execute if score tmp reg matches 7 run function asm:vga/char/7
execute if score tmp reg matches 8 run function asm:vga/char/8
execute if score tmp reg matches 9 run function asm:vga/char/9

scoreboard players reset tmp reg
kill @e[name=char_pos]

tellraw @p [{"text":"syscall print_int "},{"score":{"name":"$a0","objective":"reg"}}]
execute if score $a0 reg matches ..-1 run tellraw @p [{"score":{"name":"$a0","objective":"reg"},"color":"red"},{"text":" is out of range!","color":"red"}]
execute if score $a0 reg matches 10.. run tellraw @p [{"score":{"name":"$a0","objective":"reg"},"color":"red"},{"text":" is out of range!","color":"red"}]
