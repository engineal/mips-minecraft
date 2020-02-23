# Read from virtual address
#
# Inputs:
# address mem
#
# Outputs:
# value mem

# Translate virtual address to physical address
function hardware:mem/tlb

# Translate physical address to device address
function hardware:mem/map_device

execute if score device mem matches 0 run function hardware:mem/rom/read

execute if score debug mem matches 1.. run tellraw @p [{"text":"mem["},{"score":{"name":"address","objective":"mem"}},{"text":"]>"},{"score":{"name":"value","objective":"mem"}}]
