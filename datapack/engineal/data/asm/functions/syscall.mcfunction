# Eventually this will be written as part of the os

execute if score $v0 reg matches ..0 run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 reg matches 1 run function asm:syscall/print_int
execute if score $v0 reg matches 2..3 run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 reg matches 4 run function asm:syscall/print_string
execute if score $v0 reg matches 5..9 run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 reg matches 10 run function asm:syscall/exit
execute if score $v0 reg matches 11 run function asm:syscall/print_char
execute if score $v0 reg matches 12.. run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
