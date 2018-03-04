scoreboard objectives add cpu dummy
scoreboard players set pc cpu 0
scoreboard players set instruction cpu 0
scoreboard players set opcode cpu 0
scoreboard players set rs cpu 0
scoreboard players set rt cpu 0
scoreboard players set rd cpu 0
scoreboard players set shamt cpu 0
scoreboard players set funct cpu 0
scoreboard players set immediate cpu 0
scoreboard players set address cpu 0
scoreboard players set reg1 cpu 0
scoreboard players set reg2 cpu 0
scoreboard players set result cpu 0

scoreboard objectives add cpu_control dummy
scoreboard players set alu_op cpu_control 0
scoreboard players set alu_src cpu_control 0
scoreboard players set branch cpu_control 0
scoreboard players set jump cpu_control 0
scoreboard players set link cpu_control 0
scoreboard players set mem_read cpu_control 0
scoreboard players set mem_to_reg cpu_control 0
scoreboard players set mem_write cpu_control 0
scoreboard players set reg_dst cpu_control 0
scoreboard players set reg_write cpu_control 0

say cpu initiated
