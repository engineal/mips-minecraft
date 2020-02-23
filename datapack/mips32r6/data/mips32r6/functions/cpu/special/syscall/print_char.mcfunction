summon minecraft:armor_stand 5 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}

function vga:char/clear
scoreboard players operation char vga = $a0 mips32r6_reg
function vga:char

kill @e[name=char_pos]

tellraw @p [{"text":"syscall print_char "},{"score":{"name":"$a0","objective":"mips32r6_reg"}}]
