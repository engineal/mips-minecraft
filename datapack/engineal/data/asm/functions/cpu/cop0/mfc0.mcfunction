execute if score debug cpu matches 1.. run tellraw @p [{"text":"mfc0 "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rd","objective":"cpu"}}]

# Read register from cop0
scoreboard players set result cpu 0
execute if score rd cpu matches 0 run scoreboard players operation result cpu = c0_index cop0
execute if score rd cpu matches 1 run scoreboard players operation result cpu = c0_random cop0
execute if score rd cpu matches 2 run scoreboard players operation result cpu = c0_entrylo cop0
execute if score rd cpu matches 4 run scoreboard players operation result cpu = c0_context cop0
execute if score rd cpu matches 8 run scoreboard players operation result cpu = c0_vaddr cop0
execute if score rd cpu matches 10 run scoreboard players operation result cpu = c0_entryhi cop0
execute if score rd cpu matches 12 run scoreboard players operation result cpu = c0_status cop0
execute if score rd cpu matches 13 run scoreboard players operation result cpu = c0_cause cop0
execute if score rd cpu matches 14 run scoreboard players operation result cpu = c0_epc cop0

# Save result to rt register
scoreboard players operation address reg = rt cpu
scoreboard players operation value reg = result cpu
function asm:reg/write
