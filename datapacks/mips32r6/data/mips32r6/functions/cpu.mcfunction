# TODO: If the target address is not 4-byte aligned, an Address Error exception
# will occur when the target address is fetched.

# Fetch instruction from memory
scoreboard players operation address mips32r6_mem = pc mips32r6_cpu
scoreboard players set length mips32r6_mem 32
scoreboard players set write mips32r6_mem 0
function mips32r6:mem
scoreboard players operation instruction mips32r6_cpu = value mips32r6_mem

# Increment program counter
scoreboard players add pc mips32r6_cpu 4

# Decode instruction
function mips32r6:cpu/parse_instruction

# Execute instruction
function mips32r6:cpu/execute_instruction
