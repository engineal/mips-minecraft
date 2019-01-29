execute if score debug cpu matches 1.. run tellraw @p [{"text":"addiu "},{"score":{"name":"rt","objective":"cpu"}},{"text":", "},{"score":{"name":"rs","objective":"cpu"}},{"text":", "},{"score":{"name":"immediate","objective":"cpu"}}]

# TODO: implement unsigned operations
function hardware:cpu/addi
