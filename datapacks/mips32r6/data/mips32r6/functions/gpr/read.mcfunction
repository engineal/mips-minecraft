# Read value from a CPU register
#
# Inputs:
# index mips32r6_gpr
#
# Outputs:
# value mips32r6_gpr

execute if score index mips32r6_gpr matches 0 run scoreboard players set value mips32r6_gpr 0
execute if score index mips32r6_gpr matches 1 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[1]
execute if score index mips32r6_gpr matches 2 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[2]
execute if score index mips32r6_gpr matches 3 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[3]
execute if score index mips32r6_gpr matches 4 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[4]
execute if score index mips32r6_gpr matches 5 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[5]
execute if score index mips32r6_gpr matches 6 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[6]
execute if score index mips32r6_gpr matches 7 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[7]
execute if score index mips32r6_gpr matches 8 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[8]
execute if score index mips32r6_gpr matches 9 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[9]
execute if score index mips32r6_gpr matches 10 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[10]
execute if score index mips32r6_gpr matches 11 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[11]
execute if score index mips32r6_gpr matches 12 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[12]
execute if score index mips32r6_gpr matches 13 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[13]
execute if score index mips32r6_gpr matches 14 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[14]
execute if score index mips32r6_gpr matches 15 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[15]
execute if score index mips32r6_gpr matches 16 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[16]
execute if score index mips32r6_gpr matches 17 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[17]
execute if score index mips32r6_gpr matches 18 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[18]
execute if score index mips32r6_gpr matches 19 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[19]
execute if score index mips32r6_gpr matches 20 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[20]
execute if score index mips32r6_gpr matches 21 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[21]
execute if score index mips32r6_gpr matches 22 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[22]
execute if score index mips32r6_gpr matches 23 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[23]
execute if score index mips32r6_gpr matches 24 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[24]
execute if score index mips32r6_gpr matches 25 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[25]
execute if score index mips32r6_gpr matches 26 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[26]
execute if score index mips32r6_gpr matches 27 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[27]
execute if score index mips32r6_gpr matches 28 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[28]
execute if score index mips32r6_gpr matches 29 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[29]
execute if score index mips32r6_gpr matches 30 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[30]
execute if score index mips32r6_gpr matches 31 store result score value mips32r6_gpr run data get storage mips32r6:reg GPR[31]

execute if score gpr_level logging matches 1.. run tellraw @p [{"text":"GPR["},{"score":{"name":"index","objective":"mips32r6_gpr"}},{"text":"] -> "},{"score":{"name":"value","objective":"mips32r6_gpr"}}]
