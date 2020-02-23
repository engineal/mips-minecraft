execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"addiu "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rs","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"mips32r6_cpu"}}]

# TODO: implement unsigned operations
function mips32r6:cpu/addi
