# opcode: shift right 26 bits, apply 6 bit mask
scoreboard players operation opcode mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation opcode mips32r6_cpu /= 2^26 constants
scoreboard players operation opcode mips32r6_cpu %= 2^6 constants

# rs: shift right 21 bits, apply 5 bit mask
scoreboard players operation rs mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation rs mips32r6_cpu /= 2^21 constants
scoreboard players operation rs mips32r6_cpu %= 2^5 constants

# rt: shift right 16 bits, apply 5 bit mask
scoreboard players operation rt mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation rt mips32r6_cpu /= 2^16 constants
scoreboard players operation rt mips32r6_cpu %= 2^5 constants

# rd: shift right 11 bits, apply 5 bit mask
scoreboard players operation rd mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation rd mips32r6_cpu /= 2^11 constants
scoreboard players operation rd mips32r6_cpu %= 2^5 constants

# shamt: shift right 6 bits, apply 5 bit mask
scoreboard players operation shamt mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation shamt mips32r6_cpu /= 2^6 constants
scoreboard players operation shamt mips32r6_cpu %= 2^5 constants

# funct: apply 6 bit mask
scoreboard players operation funct mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation funct mips32r6_cpu %= 2^6 constants

# immediate: apply 16 bit mask
scoreboard players operation immediate mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation immediate mips32r6_cpu %= 2^16 constants

# address: apply 26 bit mask
scoreboard players operation address mips32r6_cpu = instruction mips32r6_cpu
scoreboard players operation address mips32r6_cpu %= 2^26 constants
