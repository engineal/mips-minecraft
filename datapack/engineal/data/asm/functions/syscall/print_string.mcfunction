execute unless entity @e[name=char_pos] run tellraw @p [{"text":"syscall print_string "},{"score":{"name":"$a0","objective":"reg"}}]
execute unless entity @e[name=char_pos] run summon minecraft:armor_stand 100 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}
function asm:vga/char/clear

scoreboard players operation address mem = $a0 reg
function asm:mem/read_byte
scoreboard players operation char vga = value mem
execute unless score value mem matches 0 run function asm:vga/char

execute at @e[name=char_pos] run teleport @e[name=char_pos] ~-6 ~ ~
scoreboard players add $a0 reg 1
execute unless score value mem matches 0 run function asm:syscall/print_string

kill @e[name=char_pos]
