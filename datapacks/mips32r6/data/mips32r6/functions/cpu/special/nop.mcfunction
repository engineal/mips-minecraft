# Format: NOP
#
# Purpose: No Operation
# To perform no operation.
#
# Description:
# NOP is the assembly idiom used to denote no operation.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"nop"}]
