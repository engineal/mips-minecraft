execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"eret"}]

scoreboard players operation pc mips32r6_cpu = epc mips32r6_cop0
