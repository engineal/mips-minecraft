scoreboard objectives add logging dummy
scoreboard players set cpu_level logging 1
scoreboard players set alu_level logging 0
scoreboard players set reg_level logging 0
scoreboard players set mem_level logging 0
scoreboard players set rom_level logging 0
scoreboard players set ram_level logging 0

function mips32r6:alu/load
function mips32r6:cop0/load
function mips32r6:cpu/load
function mips32r6:mem/load
function mips32r6:reg/load
function mips32r6:tick/load

say mips32r6 initialized
