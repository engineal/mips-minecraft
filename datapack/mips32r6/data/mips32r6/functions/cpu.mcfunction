# TODO: If the target address is not 4-byte aligned, an Address Error exception
# will occur when the target address is fetched.

# Fetch instruction from memory
scoreboard players operation address mips32r6_mem = pc mips32r6_cpu
function mips32r6:mem/read
scoreboard players operation instruction mips32r6_cpu = value mips32r6_mem

# Increment program counter
scoreboard players add pc mips32r6_cpu 4

# Decode instruction
function mips32r6:cpu/parse_instruction

# Execute instruction
execute if score opcode mips32r6_cpu matches ..-1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 0 run function mips32r6:cpu/special
execute if score opcode mips32r6_cpu matches 1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 1 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 2 run function mips32r6:cpu/j
execute if score opcode mips32r6_cpu matches 3 run function mips32r6:cpu/jal
execute if score opcode mips32r6_cpu matches 4 run function mips32r6:cpu/beq
execute if score opcode mips32r6_cpu matches 5 run function mips32r6:cpu/bne
execute if score opcode mips32r6_cpu matches 6 run function mips32r6:cpu/blez
execute if score opcode mips32r6_cpu matches 7 run function mips32r6:cpu/bgtz
execute if score opcode mips32r6_cpu matches 8 run function mips32r6:cpu/pop10
execute if score opcode mips32r6_cpu matches 9 run function mips32r6:cpu/addiu
execute if score opcode mips32r6_cpu matches 10..11 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 10..11 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 12 run function mips32r6:cpu/andi
execute if score opcode mips32r6_cpu matches 13 run function mips32r6:cpu/ori
execute if score opcode mips32r6_cpu matches 14 run function mips32r6:cpu/xori
execute if score opcode mips32r6_cpu matches 15 run function mips32r6:cpu/aui
execute if score opcode mips32r6_cpu matches 16 run function mips32r6:cpu/cop0
execute if score opcode mips32r6_cpu matches 17..23 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 17..23 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 24 run function mips32r6:cpu/pop30
execute if score opcode mips32r6_cpu matches 25..30 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 25..30 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 31 run function mips32r6:cpu/special3
execute if score opcode mips32r6_cpu matches 32..34 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 32..34 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 35 run function mips32r6:cpu/lw
execute if score opcode mips32r6_cpu matches 36..42 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 36..42 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 43 run function mips32r6:cpu/sw
execute if score opcode mips32r6_cpu matches 44..53 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 44..53 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 54 run function mips32r6:cpu/pop66
execute if score opcode mips32r6_cpu matches 55..61 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 55..61 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 62 run function mips32r6:cpu/pop76
execute if score opcode mips32r6_cpu matches 63.. run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 63.. run scoreboard players set running mips32r6_tick 0
