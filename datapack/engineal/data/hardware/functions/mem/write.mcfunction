# Write to virtual address
#
# Inputs:
# address mem
# value mem

# Translate virtual address to physical address
function hardware:mem/tlb

# Translate physical address to device address
function hardware:mem/map_device

execute if score device mem matches 0 run tellraw @p [{"text":"Writing to ROM is not supported!"}]

execute if score debug mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mem"}},{"text":"]<"},{"score":{"name":"value","objective":"mem"}}]
