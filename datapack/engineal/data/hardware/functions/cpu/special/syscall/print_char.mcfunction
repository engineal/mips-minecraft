summon minecraft:armor_stand 5 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}

function hardware:vga/char/clear
scoreboard players operation char vga = $a0 reg
function hardware:vga/char

kill @e[name=char_pos]

tellraw @p [{"text":"syscall print_char "},{"score":{"name":"$a0","objective":"reg"}}]
