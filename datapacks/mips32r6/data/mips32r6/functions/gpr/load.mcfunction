scoreboard objectives add mips32r6_gpr dummy
scoreboard players set index mips32r6_gpr 0
scoreboard players set value mips32r6_gpr 0

data modify storage mips32r6:reg GPR set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
