execute if score cpu_level logging matches 1.. if score funct mips32r6_cpu matches 32 run tellraw @p [{"text":"add "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}}]
execute if score cpu_level logging matches 1.. if score funct mips32r6_cpu matches 34 run tellraw @p [{"text":"sub "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}}]
execute if score cpu_level logging matches 1.. if score funct mips32r6_cpu matches 35 run tellraw @p [{"text":"subu "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}}]
execute if score cpu_level logging matches 1.. if score funct mips32r6_cpu matches 36 run tellraw @p [{"text":"and "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}}]
execute if score cpu_level logging matches 1.. if score funct mips32r6_cpu matches 37 run tellraw @p [{"text":"or "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}}]
execute if score cpu_level logging matches 1.. if score funct mips32r6_cpu matches 38 run tellraw @p [{"text":"xor "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rt","objective":"mips32r6_cpu"}}]

# Read registers
scoreboard players operation index mips32r6_gpr = rs mips32r6_cpu
function mips32r6:gpr/read
scoreboard players operation value1 mips32r6_alu = value mips32r6_gpr

scoreboard players operation index mips32r6_gpr = rt mips32r6_cpu
function mips32r6:gpr/read
scoreboard players operation value2 mips32r6_alu = value mips32r6_gpr

# ALU operation
execute if score funct mips32r6_cpu matches 32 run function mips32r6:alu/add
execute if score funct mips32r6_cpu matches 34 run function mips32r6:alu/sub
execute if score funct mips32r6_cpu matches 35 run function mips32r6:alu/sub
execute if score funct mips32r6_cpu matches 36 run function mips32r6:alu/and
execute if score funct mips32r6_cpu matches 37 run function mips32r6:alu/or
execute if score funct mips32r6_cpu matches 38 run function mips32r6:alu/xor

# Store register
scoreboard players operation index mips32r6_gpr = rd mips32r6_cpu
scoreboard players operation value mips32r6_gpr = result mips32r6_alu
function mips32r6:gpr/write
