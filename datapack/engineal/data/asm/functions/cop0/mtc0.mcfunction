execute if score rd cpu matches 0 run scoreboard players operation c0_index cop0 = reg2 cpu
execute if score rd cpu matches 1 run scoreboard players operation c0_random cop0 = reg2 cpu
execute if score rd cpu matches 2 run scoreboard players operation c0_entrylo cop0 = reg2 cpu
execute if score rd cpu matches 4 run scoreboard players operation c0_context cop0 = reg2 cpu
execute if score rd cpu matches 8 run scoreboard players operation c0_vaddr cop0 = reg2 cpu
execute if score rd cpu matches 10 run scoreboard players operation c0_entryhi cop0 = reg2 cpu
execute if score rd cpu matches 12 run scoreboard players operation c0_status cop0 = reg2 cpu
execute if score rd cpu matches 13 run scoreboard players operation c0_cause cop0 = reg2 cpu
execute if score rd cpu matches 14 run scoreboard players operation c0_epc cop0 = reg2 cpu

execute if score debug cpu matches 1.. run tellraw @p [{"text":"mtc0 "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rd","objective":"cpu"}}]
