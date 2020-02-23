execute if score debug cpu matches 1.. run tellraw @p [{"text":"srl "},{"score":{"name":"rd","objective":"cpu"}},{"text":", "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"shamt","objective":"cpu"}}]

# Read rt register
scoreboard players operation address reg = rt cpu
function mips32r6:reg/read

# Shift right
execute if score shamt cpu matches 1 run scoreboard players operation value reg /= 2^1 constants
execute if score shamt cpu matches 2 run scoreboard players operation value reg /= 2^2 constants
execute if score shamt cpu matches 3 run scoreboard players operation value reg /= 2^3 constants
execute if score shamt cpu matches 4 run scoreboard players operation value reg /= 2^4 constants
execute if score shamt cpu matches 5 run scoreboard players operation value reg /= 2^5 constants
execute if score shamt cpu matches 6 run scoreboard players operation value reg /= 2^6 constants
execute if score shamt cpu matches 7 run scoreboard players operation value reg /= 2^7 constants
execute if score shamt cpu matches 8 run scoreboard players operation value reg /= 2^8 constants
execute if score shamt cpu matches 9 run scoreboard players operation value reg /= 2^9 constants
execute if score shamt cpu matches 10 run scoreboard players operation value reg /= 2^10 constants
execute if score shamt cpu matches 11 run scoreboard players operation value reg /= 2^11 constants
execute if score shamt cpu matches 12 run scoreboard players operation value reg /= 2^12 constants
execute if score shamt cpu matches 13 run scoreboard players operation value reg /= 2^13 constants
execute if score shamt cpu matches 14 run scoreboard players operation value reg /= 2^14 constants
execute if score shamt cpu matches 15 run scoreboard players operation value reg /= 2^15 constants
execute if score shamt cpu matches 16 run scoreboard players operation value reg /= 2^16 constants
execute if score shamt cpu matches 17 run scoreboard players operation value reg /= 2^17 constants
execute if score shamt cpu matches 18 run scoreboard players operation value reg /= 2^18 constants
execute if score shamt cpu matches 19 run scoreboard players operation value reg /= 2^19 constants
execute if score shamt cpu matches 20 run scoreboard players operation value reg /= 2^20 constants
execute if score shamt cpu matches 21 run scoreboard players operation value reg /= 2^21 constants
execute if score shamt cpu matches 22 run scoreboard players operation value reg /= 2^22 constants
execute if score shamt cpu matches 23 run scoreboard players operation value reg /= 2^23 constants
execute if score shamt cpu matches 24 run scoreboard players operation value reg /= 2^24 constants
execute if score shamt cpu matches 25 run scoreboard players operation value reg /= 2^25 constants
execute if score shamt cpu matches 26 run scoreboard players operation value reg /= 2^26 constants
execute if score shamt cpu matches 27 run scoreboard players operation value reg /= 2^27 constants
execute if score shamt cpu matches 28 run scoreboard players operation value reg /= 2^28 constants
execute if score shamt cpu matches 29 run scoreboard players operation value reg /= 2^29 constants
execute if score shamt cpu matches 30 run scoreboard players operation value reg /= 2^30 constants
execute if score shamt cpu matches 31 run scoreboard players operation value reg /= 2^31 constants

# Store result in rd register
scoreboard players operation address reg = rd cpu
function mips32r6:reg/write
