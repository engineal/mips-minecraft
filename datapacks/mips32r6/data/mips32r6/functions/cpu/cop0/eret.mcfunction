# Format: ERET
#
# Purpose: Exception Return
# To return from interrupt, exception, or error trap.
#
# Description:
# ERET clears execution and instruction hazards and returns to the interrupted
# instruction at the completion of interrupt, exception, or error process-ing.
# ERET does not execute the next instruction (that is, it has no delay slot).

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"eret"}]

# TODO: clear execution and instruction hazards

execute store result score pc mips32r6_cpu run data get storage mips32r6:reg cp0.epc
