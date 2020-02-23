# Read from virtual address
#
# Inputs:
# address mips32r6_mem
#
# Outputs:
# value mips32r6_mem

# Translate virtual address to physical address
function mips32r6:mem/tlb

# Perform read
function #mips32r6:read

execute if score debug mips32r6_mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mips32r6_mem"}},{"text":"]>"},{"score":{"name":"value","objective":"mips32r6_mem"}}]
