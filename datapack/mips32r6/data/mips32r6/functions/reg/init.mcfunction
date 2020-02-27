scoreboard objectives add mips32r6_reg dummy
scoreboard players set address mips32r6_reg 0
scoreboard players set value mips32r6_reg 0

data modify storage mips32r6:reg register set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

scoreboard players set debug mips32r6_reg 0
