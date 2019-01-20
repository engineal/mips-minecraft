# The scoreboard division and mod operations changed in 1.13.1, which broke the way I was bit-shifting scoreboard values
# for negative values.
# https://minecraft.gamepedia.com/1.13.1#Changes
# This means I no longer need the complement logic, but See NewScoreboardDivTest.java for the instructions that broke
# TODO: evaluate and fix the broken instructions

#scoreboard players set complement cpu 0
#execute if score instruction cpu matches ..-1 run scoreboard players set complement cpu 1

# opcode: shift right 26 bits, apply 6 bit mask
scoreboard players operation opcode cpu = instruction cpu
scoreboard players operation opcode cpu /= 2^26 constants
scoreboard players operation opcode cpu %= 2^6 constants
#execute if score complement cpu matches 1 run scoreboard players add opcode cpu 63

# rs: shift right 21 bits, apply 5 bit mask
scoreboard players operation rs cpu = instruction cpu
scoreboard players operation rs cpu /= 2^21 constants
scoreboard players operation rs cpu %= 2^5 constants
#execute if score complement cpu matches 1 run scoreboard players add rs cpu 31

# rt: shift right 16 bits, apply 5 bit mask
scoreboard players operation rt cpu = instruction cpu
scoreboard players operation rt cpu /= 2^16 constants
scoreboard players operation rt cpu %= 2^5 constants
#execute if score complement cpu matches 1 run scoreboard players add rt cpu 31

# rd: shift right 11 bits, apply 5 bit mask
scoreboard players operation rd cpu = instruction cpu
scoreboard players operation rd cpu /= 2^11 constants
scoreboard players operation rd cpu %= 2^5 constants
#execute if score complement cpu matches 1 run scoreboard players add rd cpu 31

# shamt: shift right 6 bits, apply 5 bit mask
scoreboard players operation shamt cpu = instruction cpu
scoreboard players operation shamt cpu /= 2^6 constants
scoreboard players operation shamt cpu %= 2^5 constants
#execute if score complement cpu matches 1 run scoreboard players add shamt cpu 31

# funct: apply 6 bit mask
scoreboard players operation funct cpu = instruction cpu
scoreboard players operation funct cpu %= 2^6 constants
#execute if score complement cpu matches 1 run scoreboard players add funct cpu 63

# immediate: apply 16 bit mask
scoreboard players operation immediate cpu = instruction cpu
scoreboard players operation immediate cpu %= 2^16 constants
#execute if score complement cpu matches 1 run scoreboard players add immediate cpu 65535

# address: apply 26 bit mask
scoreboard players operation address cpu = instruction cpu
scoreboard players operation address cpu %= 2^26 constants
#execute if score complement cpu matches 1 run scoreboard players add address cpu 67108864

#scoreboard players reset complement cpu
