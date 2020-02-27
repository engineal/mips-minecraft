# JR rs
#
# PC <- GPR[rs]

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"jr "},{"score":{"name":"rs","objective":"mips32r6_cpu"}}]

# Read rs register
scoreboard players operation address mips32r6_reg = rs mips32r6_cpu
function mips32r6:reg/read

# TODO: If the target address is not 4-byte aligned, an Address Error exception will occur when the target address is fetched.

# TODO: Execute the instruction following the jump, in the branch delay slot,before jumping.

# Jump
scoreboard players operation pc mips32r6_cpu = value mips32r6_reg
