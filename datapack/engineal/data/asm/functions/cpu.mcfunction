execute if score debug cpu matches 2.. run tellraw @p [{"text":"IF"}]

# Read instruction from memory
scoreboard players operation address mem = pc cpu
scoreboard players add pc cpu 4
function asm:mem/read
scoreboard players operation instruction cpu = value mem

execute if score debug cpu matches 2.. run tellraw @p [{"text":"ID"}]

# Parse instruction and set control bits
function asm:cpu/parse_instruction
function asm:cpu/control

# Read registers
scoreboard players operation address reg = rs cpu
function asm:reg/read
scoreboard players operation reg1 cpu = value reg

scoreboard players operation address reg = rt cpu
function asm:reg/read
scoreboard players operation reg2 cpu = value reg

execute if score debug cpu matches 2.. run tellraw @p [{"text":"EX"}]

# ALU operation
scoreboard players operation value1 alu = reg1 cpu
execute if score alu_src cpu_control matches 0 run scoreboard players operation value2 alu = reg2 cpu
execute if score alu_src cpu_control matches 1 run scoreboard players operation value2 alu = immediate cpu
function asm:alu
scoreboard players operation result cpu = result alu

# Branch
scoreboard players operation tmp_val cpu = immediate cpu
scoreboard players operation tmp_val cpu *= 2^2 constants
execute if score branch cpu_control matches 1 if score result cpu matches 0 run scoreboard players operation pc cpu += tmp_val cpu
scoreboard players reset tmp_val cpu

# Jump
scoreboard players operation tmp_val cpu = address cpu
scoreboard players operation tmp_val cpu *= 2^2 constants
execute if score jump cpu_control matches 1 run scoreboard players operation pc cpu /= 2^28 constants
execute if score jump cpu_control matches 1 run scoreboard players operation pc cpu %= 2^4 constants
execute if score jump cpu_control matches 1 run scoreboard players operation pc cpu *= 2^28 constants
execute if score jump cpu_control matches 1 run scoreboard players operation pc cpu += tmp_val cpu
scoreboard players reset tmp_val cpu

# cop0
execute if score opcode cpu matches 16 run function asm:cop0

execute if score debug cpu matches 2.. run tellraw @p [{"text":"MEM"}]

# Memory operation
scoreboard players operation address mem = result cpu
scoreboard players operation value mem = reg2 cpu
execute if score mem_read cpu_control matches 1 run function asm:mem/read
execute if score mem_to_reg cpu_control matches 1 run scoreboard players operation result cpu = value mem
execute if score mem_write cpu_control matches 1 run function asm:mem/write

execute if score debug cpu matches 2.. run tellraw @p [{"text":"WB"}]

# Store register
execute if score reg_dst cpu_control matches 0 run scoreboard players operation address reg = rt cpu
execute if score reg_dst cpu_control matches 1 run scoreboard players operation address reg = rd cpu
scoreboard players operation value reg = result cpu
execute if score reg_write cpu_control matches 1 run function asm:reg/write

# syscall
# TODO: remove run function asm:syscall once firmware can handle it
execute if score opcode cpu matches 0 if score funct cpu matches 12 run function asm:syscall
execute if score opcode cpu matches 0 if score funct cpu matches 12 run scoreboard players operation c0_vaddr cop0 = address mem
execute if score opcode cpu matches 0 if score funct cpu matches 12 run scoreboard players operation c0_epc cop0 = pc cpu
execute if score opcode cpu matches 0 if score funct cpu matches 12 run scoreboard players remove c0_epc cop0 4
execute if score opcode cpu matches 0 if score funct cpu matches 12 run scoreboard players set pc cpu -2147483264
