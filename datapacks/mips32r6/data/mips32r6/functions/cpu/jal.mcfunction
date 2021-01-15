# Format: JAL target
#
# Purpose: Jump and Link
# To execute a procedure call within the current 256MB-aligned region.
#
# Description:
# Place the return address link in GPR 31. The return link is the address of the
# second instruction following the branch, at which location execution continues
# after a procedure call.
# This is a PC-region branch (not PC-relative); the effective target address is
# in the “current” 256MB-aligned region. The low 28 bits of the target address
# is the instr_index field shifted left 2bits. The remaining upper bits are the
# corresponding bits of the address of the instruction in the delay slot (not
# the branch itself).
# Jump to the effective target address. Execute the instruction that follows the
# jump, in the branch delay slot, before executing the jump itself.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"jal "},{"score":{"name":"address","objective":"mips32r6_cpu"}}]

# Link
scoreboard players add pc mips32r6_cpu 4
execute store result storage mips32r6:reg GPR[31] int 1 run scoreboard players get pc mips32r6_cpu

# TODO: Execute the instruction following the jump, in the branch delay slot, before jumping.

# Jump
scoreboard players operation tmp_val mips32r6_cpu = address mips32r6_cpu
scoreboard players operation tmp_val mips32r6_cpu *= 2^2 constants
scoreboard players operation pc mips32r6_cpu /= 2^28 constants
scoreboard players operation pc mips32r6_cpu %= 2^4 constants
scoreboard players operation pc mips32r6_cpu *= 2^28 constants
scoreboard players operation pc mips32r6_cpu += tmp_val mips32r6_cpu
scoreboard players reset tmp_val mips32r6_cpu
