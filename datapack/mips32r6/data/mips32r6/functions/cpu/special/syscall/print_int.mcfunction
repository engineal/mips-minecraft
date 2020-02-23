scoreboard players operation tmp reg = $a0 reg
scoreboard players operation tmp reg %= 10 constants

summon minecraft:armor_stand 5 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}

function mips32r6:vga/char/clear
execute if score $a0 reg matches ..-1 run tellraw @p [{"score":{"name":"$a0","objective":"reg"},"color":"red"},{"text":" is out of range!","color":"red"}]
execute if score tmp reg matches 0 run function mips32r6:vga/char/30
execute if score tmp reg matches 1 run function mips32r6:vga/char/31
execute if score tmp reg matches 2 run function mips32r6:vga/char/32
execute if score tmp reg matches 3 run function mips32r6:vga/char/33
execute if score tmp reg matches 4 run function mips32r6:vga/char/34
execute if score tmp reg matches 5 run function mips32r6:vga/char/35
execute if score tmp reg matches 6 run function mips32r6:vga/char/36
execute if score tmp reg matches 7 run function mips32r6:vga/char/37
execute if score tmp reg matches 8 run function mips32r6:vga/char/38
execute if score tmp reg matches 9 run function mips32r6:vga/char/39

scoreboard players operation tmp reg = $a0 reg
scoreboard players operation tmp reg /= 10 constants
scoreboard players operation tmp reg %= 10 constants

teleport @e[name=char_pos] 11 11 -10

function mips32r6:vga/char/clear
execute if score tmp reg matches 0 run function mips32r6:vga/char/30
execute if score tmp reg matches 1 run function mips32r6:vga/char/31
execute if score tmp reg matches 2 run function mips32r6:vga/char/32
execute if score tmp reg matches 3 run function mips32r6:vga/char/33
execute if score tmp reg matches 4 run function mips32r6:vga/char/34
execute if score tmp reg matches 5 run function mips32r6:vga/char/35
execute if score tmp reg matches 6 run function mips32r6:vga/char/36
execute if score tmp reg matches 7 run function mips32r6:vga/char/37
execute if score tmp reg matches 8 run function mips32r6:vga/char/38
execute if score tmp reg matches 9 run function mips32r6:vga/char/39
execute if score $a0 reg matches 100.. run tellraw @p [{"score":{"name":"$a0","objective":"reg"},"color":"red"},{"text":" is out of range!","color":"red"}]

scoreboard players reset tmp reg
kill @e[name=char_pos]

tellraw @p [{"text":"syscall print_int "},{"score":{"name":"$a0","objective":"reg"}}]
