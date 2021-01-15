scoreboard objectives add mips32r6_reg dummy
scoreboard players set address mips32r6_reg 0
scoreboard players set value mips32r6_reg 0

data modify storage mips32r6:reg GPR set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
