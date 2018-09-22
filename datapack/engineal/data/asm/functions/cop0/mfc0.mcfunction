scoreboard players set reg_write cpu_control 1

execute if score rd cpu matches 0 run scoreboard players operation result cpu = c0_index cop0
execute if score rd cpu matches 1 run scoreboard players operation result cpu = c0_random cop0
execute if score rd cpu matches 2 run scoreboard players operation result cpu = c0_entrylo cop0
execute if score rd cpu matches 4 run scoreboard players operation result cpu = c0_context cop0
execute if score rd cpu matches 8 run scoreboard players operation result cpu = c0_vaddr cop0
execute if score rd cpu matches 10 run scoreboard players operation result cpu = c0_entryhi cop0
execute if score rd cpu matches 12 run scoreboard players operation result cpu = c0_status cop0
execute if score rd cpu matches 13 run scoreboard players operation result cpu = c0_cause cop0
execute if score rd cpu matches 14 run scoreboard players operation result cpu = c0_epc cop0

execute if score debug cpu matches 1.. run tellraw @p [{"text":"mfc0 "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rd","objective":"cpu"}}]
