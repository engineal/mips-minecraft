scoreboard objectives add mem dummy
scoreboard players set address mem 0
scoreboard players set value mem 0

scoreboard objectives add constants dummy
scoreboard players set 2^4 constants 16
scoreboard players set 2^8 constants 256
scoreboard players set 2^12 constants 4096
scoreboard players set 2^16 constants 65536
scoreboard players set 2^20 constants 1048576
scoreboard players set 2^24 constants 16777216
scoreboard players set 2^28 constants 268435456

# 32 KB memory
fill 0 0 0 15 255 7 minecraft:white_wool
fill 16 0 0 31 255 7 minecraft:white_wool

scoreboard players set debug mem 0

say mem initiated
