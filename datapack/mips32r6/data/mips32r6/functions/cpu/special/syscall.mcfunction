execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"syscall"}]

scoreboard players operation vaddr mips32r6_cop0 = address mips32r6_mem
scoreboard players operation epc mips32r6_cop0 = pc mips32r6_cpu
scoreboard players remove epc mips32r6_cop0 4
scoreboard players set pc mips32r6_cpu -2147483264
