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

scoreboard objectives add constants dummy
scoreboard players set 2^5 constants 32
scoreboard players set 2^6 constants 64
scoreboard players set 2^11 constants 2048
scoreboard players set 2^16 constants 65536
scoreboard players set 2^21 constants 2097152
scoreboard players set 2^26 constants 67108864

scoreboard players set debug cpu 1

say cpu initiated
