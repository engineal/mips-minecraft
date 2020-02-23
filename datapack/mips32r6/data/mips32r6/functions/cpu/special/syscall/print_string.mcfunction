execute unless entity @e[name=char_pos] run tellraw @p [{"text":"syscall print_string "},{"score":{"name":"$a0","objective":"mips32r6_reg"}}]
execute unless entity @e[name=char_pos] run summon minecraft:armor_stand 100 11 -10 {CustomName:"\"char_pos\"",NoGravity:true}
function vga:char/clear

scoreboard players operation address mips32r6_mem = $a0 mips32r6_reg
function mips32r6:mem/read_byte
scoreboard players operation char vga = value mips32r6_mem
execute unless score value mips32r6_mem matches 0 run function vga:char

execute at @e[name=char_pos] run teleport @e[name=char_pos] ~-6 ~ ~
scoreboard players add $a0 mips32r6_reg 1
execute unless score value mips32r6_mem matches 0 run function mips32r6:cpu/special/syscall/print_string

kill @e[name=char_pos]
