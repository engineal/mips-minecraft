scoreboard players set result alu 0

# bit 0
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^0 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^0 constants

# bit 1
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^1 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^1 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^1 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^1 constants

# bit 2
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^2 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^2 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^2 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^2 constants

# bit 3
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^3 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^3 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^3 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^3 constants

# bit 4
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^4 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^4 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^4 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^4 constants

# bit 5
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^5 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^5 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^5 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^5 constants

# bit 6
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^6 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^6 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^6 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^6 constants

# bit 7
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^7 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^7 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^7 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^7 constants

# bit 8
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^8 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^8 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^8 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^8 constants

# bit 9
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^9 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^9 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^9 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^9 constants

# bit 10
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^10 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^10 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^10 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^10 constants

# bit 11
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^11 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^11 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^11 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^11 constants

# bit 12
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^12 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^12 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^12 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^12 constants

# bit 13
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^13 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^13 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^13 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^13 constants

# bit 14
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^14 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^14 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^14 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^14 constants

# bit 15
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^15 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^15 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^15 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^15 constants

# bit 16
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^16 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^16 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^16 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^16 constants

# bit 17
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^17 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^17 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^17 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^17 constants

# bit 18
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^18 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^18 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^18 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^18 constants

# bit 19
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^19 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^19 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^19 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^19 constants

# bit 20
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^20 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^20 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^20 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^20 constants

# bit 21
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^21 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^21 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^21 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^21 constants

# bit 22
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^22 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^22 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^22 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^22 constants

# bit 23
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^23 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^23 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^23 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^23 constants

# bit 24
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^24 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^24 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^24 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^24 constants

# bit 25
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^25 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^25 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^25 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^25 constants

# bit 26
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^26 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^26 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^26 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^26 constants

# bit 27
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^27 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^27 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^27 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^27 constants

# bit 28
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^28 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^28 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^28 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^28 constants

# bit 29
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^29 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^29 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^29 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^29 constants

# bit 30
scoreboard players operation tmp_value1 alu = value1 alu
scoreboard players operation tmp_value1 alu /= 2^30 constants
scoreboard players operation tmp_value1 alu %= 2^1 constants

scoreboard players operation tmp_value2 alu = value2 alu
scoreboard players operation tmp_value2 alu /= 2^30 constants
scoreboard players operation tmp_value2 alu %= 2^1 constants

execute if score tmp_value1 alu matches 1 if score tmp_value2 alu matches 0 run scoreboard players operation result alu += 2^30 constants
execute if score tmp_value1 alu matches 0 if score tmp_value2 alu matches 1 run scoreboard players operation result alu += 2^30 constants

# bit 31
execute if score value1 alu matches ..-1 if score value2 alu matches 0.. run scoreboard players operation result alu += 2^31 constants
execute if score value1 alu matches 0.. if score value2 alu matches ..-1 run scoreboard players operation result alu += 2^31 constants

scoreboard players reset tmp_value1 alu
scoreboard players reset tmp_value2 alu

execute if score debug alu matches 1.. run tellraw @p [{"score":{"name":"value1","objective":"alu"}},{"text":"^"},{"score":{"name":"value2","objective":"alu"}},{"text":"="},{"score":{"name":"result","objective":"alu"}}]
