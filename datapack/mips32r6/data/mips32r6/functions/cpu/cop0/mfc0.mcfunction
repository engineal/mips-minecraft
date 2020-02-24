execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"mfc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read register from cop0
scoreboard players set value mips32r6_reg 0
execute if score rd mips32r6_cpu matches 0 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.index
execute if score rd mips32r6_cpu matches 1 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.random
execute if score rd mips32r6_cpu matches 2 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.entrylo
execute if score rd mips32r6_cpu matches 4 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.context
execute if score rd mips32r6_cpu matches 8 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.vaddr
execute if score rd mips32r6_cpu matches 10 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.entryhi
execute if score rd mips32r6_cpu matches 12 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.status
execute if score rd mips32r6_cpu matches 13 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.cause
execute if score rd mips32r6_cpu matches 14 store result score value mips32r6_reg run data get storage mips32r6:reg cop0.epc

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/write
