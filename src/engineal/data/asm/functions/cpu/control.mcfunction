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

# r-type
execute if score opcode cpu matches 0 run scoreboard players set reg_dst cpu_control 1
execute if score opcode cpu matches 0 run scoreboard players set alu_op cpu_control 2
execute if score opcode cpu matches 0 run scoreboard players set reg_write cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 0 run tellraw @p [{"text":"r-type "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}}]

#
execute if score opcode cpu matches 1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]

# j-type
execute if score opcode cpu matches 2 run scoreboard players set jump cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 2 run tellraw @p [{"text":"j "},{"score":{"name":"address","objective":"cpu"}}]

# jal
execute if score opcode cpu matches 3 run scoreboard players set jump cpu_control 1
execute if score opcode cpu matches 3 run scoreboard players set link cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 3 run tellraw @p [{"text":"jal "},{"score":{"name":"address","objective":"cpu"}}]

# beq
execute if score opcode cpu matches 4 run scoreboard players set branch cpu_control 1
execute if score opcode cpu matches 4 run scoreboard players set alu_op cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 4 run tellraw @p [{"text":"beq "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# bne
execute if score opcode cpu matches 5 run scoreboard players set branch cpu_control 1
execute if score opcode cpu matches 5 run scoreboard players set alu_op cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 5 run tellraw @p [{"text":"bne "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}},{"text":", *"},{"score":{"name":"immediate","objective":"cpu"}}]

# blez
execute if score opcode cpu matches 6 run scoreboard players set branch cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 6 run tellraw @p [{"text":"blez "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# bgtz
execute if score opcode cpu matches 7 run scoreboard players set branch cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 7 run tellraw @p [{"text":"bgtz "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# addi
execute if score opcode cpu matches 8 run scoreboard players set alu_src cpu_control 1
execute if score opcode cpu matches 8 run scoreboard players set reg_write cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 8 run tellraw @p [{"text":"addi "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# addiu
execute if score opcode cpu matches 9 run scoreboard players set alu_src cpu_control 1
execute if score opcode cpu matches 9 run scoreboard players set reg_write cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 9 run tellraw @p [{"text":"addiu "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# slti
execute if score opcode cpu matches 10 run tellraw @p [{"text":"slti not implemented!","color":"red"}]

# sltiu
execute if score opcode cpu matches 11 run tellraw @p [{"text":"sltiu not implemented!","color":"red"}]

# andi
execute if score opcode cpu matches 12 run tellraw @p [{"text":"andi not implemented!","color":"red"}]

# ori
execute if score opcode cpu matches 13 run tellraw @p [{"text":"ori not implemented!","color":"red"}]

# xori
execute if score opcode cpu matches 14 run tellraw @p [{"text":"xori not implemented!","color":"red"}]

# lui
execute if score opcode cpu matches 15 run tellraw @p [{"text":"lui not implemented!","color":"red"}]

#
execute if score opcode cpu matches 16..31 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]

#
execute if score opcode cpu matches 32..34 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]

# lw
execute if score opcode cpu matches 35 run scoreboard players set mem_read cpu_control 1
execute if score opcode cpu matches 35 run scoreboard players set mem_to_reg cpu_control 1
execute if score opcode cpu matches 35 run scoreboard players set alu_src cpu_control 1
execute if score opcode cpu matches 35 run scoreboard players set reg_write cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 35 run tellraw @p [{"text":"lw "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}},{"text":"("},{"score":{"name":"rs","objective":"cpu"}},{"text":")"}]

#
execute if score opcode cpu matches 36..42 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]

# sw
execute if score opcode cpu matches 43 run scoreboard players set mem_write cpu_control 1
execute if score opcode cpu matches 43 run scoreboard players set alu_src cpu_control 1
execute if score debug cpu matches 1.. if score opcode cpu matches 43 run tellraw @p [{"text":"sw "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}},{"text":"("},{"score":{"name":"rs","objective":"cpu"}},{"text":")"}]

#
execute if score opcode cpu matches 44..63 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]


# ALU control
scoreboard players set operation alu 0

execute if score alu_op cpu_control matches 0 run scoreboard players set operation alu 0
execute if score alu_op cpu_control matches 1 run scoreboard players set operation alu 1
execute if score alu_op cpu_control matches 2 if score funct cpu matches 16 run scoreboard players set operation alu 0
execute if score alu_op cpu_control matches 2 if score funct cpu matches 18 run scoreboard players set operation alu 1
execute if score alu_op cpu_control matches 2 if score funct cpu matches 20 run scoreboard players set operation alu 5
execute if score alu_op cpu_control matches 2 if score funct cpu matches 21 run scoreboard players set operation alu 6
execute if score alu_op cpu_control matches 2 if score funct cpu matches 26 run scoreboard players set operation alu 7
