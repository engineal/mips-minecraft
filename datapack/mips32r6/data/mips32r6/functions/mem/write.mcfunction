# Write to virtual address
#
# Inputs:
# address mem
# value mem

# Translate virtual address to physical address
function mips32r6:mem/tlb

# Perform write
function #mips32r6:write

execute if score debug mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mem"}},{"text":"]<"},{"score":{"name":"value","objective":"mem"}}]
