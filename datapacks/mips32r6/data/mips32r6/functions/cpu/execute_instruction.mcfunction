execute if score opcode mips32r6_cpu matches ..-1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 0 run function mips32r6:cpu/instructions/special
execute if score opcode mips32r6_cpu matches 1 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 1 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 2 run function mips32r6:cpu/instructions/j
execute if score opcode mips32r6_cpu matches 3 run function mips32r6:cpu/instructions/jal
execute if score opcode mips32r6_cpu matches 4 run function mips32r6:cpu/instructions/beq
execute if score opcode mips32r6_cpu matches 5 run function mips32r6:cpu/instructions/bne
execute if score opcode mips32r6_cpu matches 6 run function mips32r6:cpu/instructions/blez
execute if score opcode mips32r6_cpu matches 7 run function mips32r6:cpu/instructions/bgtz
execute if score opcode mips32r6_cpu matches 8 run function mips32r6:cpu/instructions/pop10
execute if score opcode mips32r6_cpu matches 9 run function mips32r6:cpu/instructions/addiu
execute if score opcode mips32r6_cpu matches 10..11 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 10..11 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 12 run function mips32r6:cpu/instructions/andi
execute if score opcode mips32r6_cpu matches 13 run function mips32r6:cpu/instructions/ori
execute if score opcode mips32r6_cpu matches 14 run function mips32r6:cpu/instructions/xori
execute if score opcode mips32r6_cpu matches 15 run function mips32r6:cpu/instructions/aui
execute if score opcode mips32r6_cpu matches 16 run function mips32r6:cpu/instructions/cop0
execute if score opcode mips32r6_cpu matches 17..23 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 17..23 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 24 run function mips32r6:cpu/instructions/pop30
execute if score opcode mips32r6_cpu matches 25..30 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 25..30 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 31 run function mips32r6:cpu/instructions/special3
execute if score opcode mips32r6_cpu matches 32..34 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 32..34 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 35 run function mips32r6:cpu/instructions/lw
execute if score opcode mips32r6_cpu matches 36..42 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 36..42 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 43 run function mips32r6:cpu/instructions/sw
execute if score opcode mips32r6_cpu matches 44..53 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 44..53 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 54 run function mips32r6:cpu/instructions/pop66
execute if score opcode mips32r6_cpu matches 55..61 run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 55..61 run scoreboard players set running mips32r6_tick 0
execute if score opcode mips32r6_cpu matches 62 run function mips32r6:cpu/instructions/pop76
execute if score opcode mips32r6_cpu matches 63.. run tellraw @p [{"text":"opcode ","color":"red"},{"score":{"name":"opcode","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score opcode mips32r6_cpu matches 63.. run scoreboard players set running mips32r6_tick 0
