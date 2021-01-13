# Format: JALR rd, rs
#
# Purpose: Jump and Link Register
# To execute a procedure call to an instruction address in a register.
#
# Description: GPR[rd] <- return_addr, PC <- GPR[rs]
# Place the return address link in GPR rd. The return link is the address of the
# second instruction following the branch, where execution continues after a
# procedure call.
# Jump to the effective target address in GPR rs. If the target address is not
# 4-byte aligned, an Address Error exception will occur when the target address
# is fetched.
# Execute the instruction following the jump, in the branch delay slot, before
# executing the jump itself.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"jalr "},{"score":{"name":"rd","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}}]

# Link
scoreboard players add pc mips32r6_cpu 4
scoreboard players operation address mips32r6_reg = rd mips32r6_cpu
scoreboard players operation value mips32r6_reg = pc mips32r6_cpu
function mips32r6:reg/write

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# TODO: Execute the instruction following the jump, in the branch delay slot, before jumping.

# Jump
scoreboard players operation pc mips32r6_cpu = value mips32r6_reg
