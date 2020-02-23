# Read instruction from memory
scoreboard players operation address mem = pc cpu
scoreboard players add pc cpu 4
function mips32r6:mem/read
scoreboard players operation instruction cpu = value mem

# Parse instruction
function mips32r6:cpu/parse_instruction

# Run instruction
execute if score opcode cpu matches 0 run function mips32r6:cpu/special
execute if score opcode cpu matches 1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode cpu matches 2 run function mips32r6:cpu/j
execute if score opcode cpu matches 3 run function mips32r6:cpu/jal
execute if score opcode cpu matches 4 run function mips32r6:cpu/beq
execute if score opcode cpu matches 5 run function mips32r6:cpu/bne
execute if score opcode cpu matches 6 run function mips32r6:cpu/blez
execute if score opcode cpu matches 7 run function mips32r6:cpu/bgtz
execute if score opcode cpu matches 8 run function mips32r6:cpu/addi
execute if score opcode cpu matches 9 run function mips32r6:cpu/addiu
execute if score opcode cpu matches 10 run tellraw @p [{"text":"slti not implemented!","color":"red"}]
execute if score opcode cpu matches 11 run tellraw @p [{"text":"sltiu not implemented!","color":"red"}]
execute if score opcode cpu matches 12 run function mips32r6:cpu/andi
execute if score opcode cpu matches 13 run function mips32r6:cpu/ori
execute if score opcode cpu matches 14 run function mips32r6:cpu/xori
execute if score opcode cpu matches 15 run function mips32r6:cpu/lui
execute if score opcode cpu matches 16 run function mips32r6:cpu/cop0
execute if score opcode cpu matches 17..34 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode cpu matches 35 run function mips32r6:cpu/lw
execute if score opcode cpu matches 36..42 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode cpu matches 43 run function mips32r6:cpu/sw
execute if score opcode cpu matches 44.. run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
