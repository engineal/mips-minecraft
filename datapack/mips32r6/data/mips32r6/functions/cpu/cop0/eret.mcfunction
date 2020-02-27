execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"eret"}]

execute store result score pc mips32r6_cpu run data get storage mips32r6:reg cp0.epc
