# Format: NOP
#
# Purpose: No Operation
# To perform no operation.
#
# Description:
# NOP is the assembly idiom used to denote no operation.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"nop"}]
