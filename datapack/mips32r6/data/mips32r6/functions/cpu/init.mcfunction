scoreboard objectives add mips32r6_cpu dummy
scoreboard players set pc mips32r6_cpu -1077936128
scoreboard players set instruction mips32r6_cpu 0
scoreboard players set opcode mips32r6_cpu 0
scoreboard players set rs mips32r6_cpu 0
scoreboard players set rt mips32r6_cpu 0
scoreboard players set rd mips32r6_cpu 0
scoreboard players set shamt mips32r6_cpu 0
scoreboard players set funct mips32r6_cpu 0
scoreboard players set immediate mips32r6_cpu 0
scoreboard players set address mips32r6_cpu 0

function mips32r6:cpu/cop0/init

scoreboard players set debug mips32r6_cpu 1
