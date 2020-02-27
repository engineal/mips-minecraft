execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"syscall"}]

execute store result storage mips32r6:reg cp0.vaddr int 1 run scoreboard players get address mips32r6_mem

scoreboard players remove pc mips32r6_cpu 4
execute store result storage mips32r6:reg cp0.epc int 1 run scoreboard players get pc mips32r6_cpu

scoreboard players set pc mips32r6_cpu -2147483264
