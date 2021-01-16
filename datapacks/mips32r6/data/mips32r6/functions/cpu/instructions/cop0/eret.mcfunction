# Format: ERET
#
# Purpose: Exception Return
# To return from interrupt, exception, or error trap.
#
# Description:
# ERET clears execution and instruction hazards and returns to the interrupted
# instruction at the completion of interrupt, exception, or error process-ing.
# ERET does not execute the next instruction (that is, it has no delay slot).

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"eret"}]

# Lookup Status ERL
execute store result score tmp_status_erl mips32r6_cpu run data get storage mips32r6:reg CP0.Status.ERL

execute if score tmp_status_erl mips32r6_cpu matches 1 store result score pc mips32r6_cpu run data get storage mips32r6:reg CP0.ErrorEPC
execute if score tmp_status_erl mips32r6_cpu matches 1 run data modify storage mips32r6:reg CP0.Status.ERL set value 0

execute unless score tmp_status_erl mips32r6_cpu matches 1 store result score pc mips32r6_cpu run data get storage mips32r6:reg CP0.EPC
execute if score tmp_status_erl mips32r6_cpu matches 1 run data modify storage mips32r6:reg CP0.Status.EXL set value 0

# TODO: set SRSCtl

# TODO: clear LLbit

# TODO: clear execution and instruction hazards

scoreboard players reset tmp_status_erl mips32r6_cpu
