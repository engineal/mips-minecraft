summon minecraft:armor_stand 5 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}

function asm:vga/char/clear
scoreboard players operation char vga = $a0 reg
function asm:vga/char

kill @e[name=char_pos]

tellraw @p [{"text":"syscall print_char "},{"score":{"name":"$a0","objective":"reg"}}]
