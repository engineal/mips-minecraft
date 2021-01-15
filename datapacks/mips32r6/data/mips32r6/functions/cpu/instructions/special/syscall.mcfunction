# Format: SYSCALL
#
# Purpose: System Call
# To cause a System Call exception.
#
# Description:
# A system call exception occurs, immediately and unconditionally transferring
# control to the exception handler. The code field is available for use as
# software parameters, but may be retrieved by the exception handler by loading
# the contents of the memory word containing the instruction. Alternatively, if
# CP0 BadInstr is implemented, the code field may be obtained from BadInstr.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"syscall"}]

execute store result storage mips32r6:reg cp0.vaddr int 1 run scoreboard players get address mips32r6_mem

scoreboard players remove pc mips32r6_cpu 4
execute store result storage mips32r6:reg cp0.epc int 1 run scoreboard players get pc mips32r6_cpu

scoreboard players set pc mips32r6_cpu -2147483264
