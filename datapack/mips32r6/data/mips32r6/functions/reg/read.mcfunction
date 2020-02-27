# Read value from a CPU register
#
# Inputs:
# address mips32r6_reg
#
# Outputs:
# value mips32r6_reg

execute if score address mips32r6_reg matches 0 run scoreboard players set value mips32r6_reg 0
execute if score address mips32r6_reg matches 1 store result score value mips32r6_reg run data get storage mips32r6:reg register[1]
execute if score address mips32r6_reg matches 2 store result score value mips32r6_reg run data get storage mips32r6:reg register[2]
execute if score address mips32r6_reg matches 3 store result score value mips32r6_reg run data get storage mips32r6:reg register[3]
execute if score address mips32r6_reg matches 4 store result score value mips32r6_reg run data get storage mips32r6:reg register[4]
execute if score address mips32r6_reg matches 5 store result score value mips32r6_reg run data get storage mips32r6:reg register[5]
execute if score address mips32r6_reg matches 6 store result score value mips32r6_reg run data get storage mips32r6:reg register[6]
execute if score address mips32r6_reg matches 7 store result score value mips32r6_reg run data get storage mips32r6:reg register[7]
execute if score address mips32r6_reg matches 8 store result score value mips32r6_reg run data get storage mips32r6:reg register[8]
execute if score address mips32r6_reg matches 9 store result score value mips32r6_reg run data get storage mips32r6:reg register[9]
execute if score address mips32r6_reg matches 10 store result score value mips32r6_reg run data get storage mips32r6:reg register[10]
execute if score address mips32r6_reg matches 11 store result score value mips32r6_reg run data get storage mips32r6:reg register[11]
execute if score address mips32r6_reg matches 12 store result score value mips32r6_reg run data get storage mips32r6:reg register[12]
execute if score address mips32r6_reg matches 13 store result score value mips32r6_reg run data get storage mips32r6:reg register[13]
execute if score address mips32r6_reg matches 14 store result score value mips32r6_reg run data get storage mips32r6:reg register[14]
execute if score address mips32r6_reg matches 15 store result score value mips32r6_reg run data get storage mips32r6:reg register[15]
execute if score address mips32r6_reg matches 16 store result score value mips32r6_reg run data get storage mips32r6:reg register[16]
execute if score address mips32r6_reg matches 17 store result score value mips32r6_reg run data get storage mips32r6:reg register[17]
execute if score address mips32r6_reg matches 18 store result score value mips32r6_reg run data get storage mips32r6:reg register[18]
execute if score address mips32r6_reg matches 19 store result score value mips32r6_reg run data get storage mips32r6:reg register[19]
execute if score address mips32r6_reg matches 20 store result score value mips32r6_reg run data get storage mips32r6:reg register[20]
execute if score address mips32r6_reg matches 21 store result score value mips32r6_reg run data get storage mips32r6:reg register[21]
execute if score address mips32r6_reg matches 22 store result score value mips32r6_reg run data get storage mips32r6:reg register[22]
execute if score address mips32r6_reg matches 23 store result score value mips32r6_reg run data get storage mips32r6:reg register[23]
execute if score address mips32r6_reg matches 24 store result score value mips32r6_reg run data get storage mips32r6:reg register[24]
execute if score address mips32r6_reg matches 25 store result score value mips32r6_reg run data get storage mips32r6:reg register[25]
execute if score address mips32r6_reg matches 26 store result score value mips32r6_reg run data get storage mips32r6:reg register[26]
execute if score address mips32r6_reg matches 27 store result score value mips32r6_reg run data get storage mips32r6:reg register[27]
execute if score address mips32r6_reg matches 28 store result score value mips32r6_reg run data get storage mips32r6:reg register[28]
execute if score address mips32r6_reg matches 29 store result score value mips32r6_reg run data get storage mips32r6:reg register[29]
execute if score address mips32r6_reg matches 30 store result score value mips32r6_reg run data get storage mips32r6:reg register[30]
execute if score address mips32r6_reg matches 31 store result score value mips32r6_reg run data get storage mips32r6:reg register[31]

execute if score debug mips32r6_reg matches 1.. run tellraw @p [{"text":"register["},{"score":{"name":"address","objective":"mips32r6_reg"}},{"text":"]->"},{"score":{"name":"value","objective":"mips32r6_reg"}}]
