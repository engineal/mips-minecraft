# opcode: shift right 26 bits, apply 6 bit mask
scoreboard players operation opcode cpu = instruction cpu
scoreboard players operation opcode cpu /= 2^26 constants
scoreboard players operation opcode cpu %= 2^6 constants

# rs: shift right 21 bits, apply 5 bit mask
scoreboard players operation rs cpu = instruction cpu
scoreboard players operation rs cpu /= 2^21 constants
scoreboard players operation rs cpu %= 2^5 constants

# rt: shift right 16 bits, apply 5 bit mask
scoreboard players operation rt cpu = instruction cpu
scoreboard players operation rt cpu /= 2^16 constants
scoreboard players operation rt cpu %= 2^5 constants

# rd: shift right 11 bits, apply 5 bit mask
scoreboard players operation rd cpu = instruction cpu
scoreboard players operation rd cpu /= 2^11 constants
scoreboard players operation rd cpu %= 2^5 constants

# shamt: shift right 6 bits, apply 5 bit mask
scoreboard players operation shamt cpu = instruction cpu
scoreboard players operation shamt cpu /= 2^6 constants
scoreboard players operation shamt cpu %= 2^5 constants

# funct: apply 6 bit mask
scoreboard players operation funct cpu = instruction cpu
scoreboard players operation funct cpu %= 2^6 constants

# immediate: apply 16 bit mask
scoreboard players operation immediate cpu = instruction cpu
scoreboard players operation immediate cpu %= 2^16 constants

# address: apply 26 bit mask
scoreboard players operation address cpu = instruction cpu
scoreboard players operation address cpu %= 2^26 constants
