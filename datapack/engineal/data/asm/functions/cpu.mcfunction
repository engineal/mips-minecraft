# Read instruction from memory
scoreboard players operation address mem = pc cpu
scoreboard players add pc cpu 4
function asm:mem/read
scoreboard players operation instruction cpu = value mem

# Parse instruction
function asm:cpu/parse_instruction

# Run instruction
execute if score opcode cpu matches 0 run function asm:cpu/special
execute if score opcode cpu matches 1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode cpu matches 2 run function asm:cpu/j
execute if score opcode cpu matches 3 run tellraw @p [{"text":"jal not implemented!","color":"red"}]
execute if score opcode cpu matches 4 run function asm:cpu/beq
execute if score opcode cpu matches 5 run tellraw @p [{"text":"bne not implemented!","color":"red"}]
execute if score opcode cpu matches 6 run tellraw @p [{"text":"blez not implemented!","color":"red"}]
execute if score opcode cpu matches 7 run function asm:cpu/bgtz
execute if score opcode cpu matches 8 run function asm:cpu/addi
execute if score opcode cpu matches 9 run function asm:cpu/addiu
execute if score opcode cpu matches 10 run tellraw @p [{"text":"slti not implemented!","color":"red"}]
execute if score opcode cpu matches 11 run tellraw @p [{"text":"sltiu not implemented!","color":"red"}]
execute if score opcode cpu matches 12 run function asm:cpu/andi
execute if score opcode cpu matches 13 run function asm:cpu/ori
execute if score opcode cpu matches 14 run function asm:cpu/xori
execute if score opcode cpu matches 15 run function asm:cpu/lui
execute if score opcode cpu matches 16 run function asm:cpu/cop0
execute if score opcode cpu matches 17..34 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode cpu matches 35 run function asm:cpu/lw
execute if score opcode cpu matches 36..42 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode cpu matches 43 run function asm:cpu/sw
execute if score opcode cpu matches 44.. run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
