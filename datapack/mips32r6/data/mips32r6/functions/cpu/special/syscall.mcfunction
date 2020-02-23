execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"syscall"}]

# TODO: remove once firmware can handle it
execute if score $v0 mips32r6_reg matches ..0 run tellraw @p [{"score":{"name":"$v0","objective":"mips32r6_reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 mips32r6_reg matches 1 run function mips32r6:cpu/special/syscall/print_int
execute if score $v0 mips32r6_reg matches 2..3 run tellraw @p [{"score":{"name":"$v0","objective":"mips32r6_reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 mips32r6_reg matches 4 run function mips32r6:cpu/special/syscall/print_string
execute if score $v0 mips32r6_reg matches 5..9 run tellraw @p [{"score":{"name":"$v0","objective":"mips32r6_reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]
execute if score $v0 mips32r6_reg matches 10 run function mips32r6:cpu/special/syscall/exit
execute if score $v0 mips32r6_reg matches 11 run function mips32r6:cpu/special/syscall/print_char
execute if score $v0 mips32r6_reg matches 12.. run tellraw @p [{"score":{"name":"$v0","objective":"mips32r6_reg"},"color":"red"},{"text":" is not a valid syscall!","color":"red"}]

scoreboard players operation vaddr mips32r6_cop0 = address mips32r6_mem
scoreboard players operation epc mips32r6_cop0 = pc mips32r6_cpu
scoreboard players remove epc mips32r6_cop0 4
scoreboard players set pc mips32r6_cpu -2147483264
