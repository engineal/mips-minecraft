setblock -3 1 3 minecraft:white_wool
scoreboard players set pc cpu 0

tellraw @p [{"text":"syscall exit"}]
