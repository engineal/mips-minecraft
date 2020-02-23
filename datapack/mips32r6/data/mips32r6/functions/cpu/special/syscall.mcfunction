execute if score debug cpu matches 1.. run tellraw @p [{"text":"syscall"}]

# TODO: remove once firmware can handle it
execute if score $v0 reg matches ..0 run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 reg matches 1 run function mips32r6:cpu/special/syscall/print_int
execute if score $v0 reg matches 2..3 run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 reg matches 4 run function mips32r6:cpu/special/syscall/print_string
execute if score $v0 reg matches 5..9 run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 reg matches 10 run function mips32r6:cpu/special/syscall/exit
execute if score $v0 reg matches 11 run function mips32r6:cpu/special/syscall/print_char
execute if score $v0 reg matches 12.. run tellraw @p [{"score":{"name":"$v0","objective":"reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]

scoreboard players operation c0_vaddr cop0 = address mem
scoreboard players operation c0_epc cop0 = pc cpu
scoreboard players remove c0_epc cop0 4
scoreboard players set pc cpu -2147483264
