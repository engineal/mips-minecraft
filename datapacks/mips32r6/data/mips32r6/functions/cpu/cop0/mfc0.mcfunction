# Format: MFC0 rt, rd
#
# Purpose: Move from Coprocessor 0
# To move the contents of a coprocessor 0 register to a general register.
#
# Description: GPR[rt] <- CPR[0,rd,sel]
# The contents of the coprocessor 0 register specified by the combination of rd
# and sel are loaded into general register rt. Not all coprocessor 0 registers
# support the sel field. In those instances, the sel field must be zero.

execute if score debug mips32r6_cpu matches 1.. run tellraw @p [{"text":"mfc0 "},{"score":{"name":"rt","objective":"mips32r6_cpu"}},{"text":", "},{"score":{"name":"rd","objective":"mips32r6_cpu"}}]

# Read register from cop0
scoreboard players set value mips32r6_reg 0
execute if score rd mips32r6_cpu matches ..-1 run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches ..-1 run scoreboard players set running mips32r6_tick 0
execute if score rd mips32r6_cpu matches 0 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.index
execute if score rd mips32r6_cpu matches 1 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.random
execute if score rd mips32r6_cpu matches 2 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.entrylo
execute if score rd mips32r6_cpu matches 3 run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches 3 run scoreboard players set running mips32r6_tick 0
execute if score rd mips32r6_cpu matches 4 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.context
execute if score rd mips32r6_cpu matches 5..7 run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches 5..7 run scoreboard players set running mips32r6_tick 0
execute if score rd mips32r6_cpu matches 8 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.vaddr
execute if score rd mips32r6_cpu matches 9 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.count
execute if score rd mips32r6_cpu matches 10 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.entryhi
execute if score rd mips32r6_cpu matches 11 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.compare
execute if score rd mips32r6_cpu matches 12 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.status
execute if score rd mips32r6_cpu matches 13 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.cause
execute if score rd mips32r6_cpu matches 14 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.epc
execute if score rd mips32r6_cpu matches 15..29 run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches 15..29 run scoreboard players set running mips32r6_tick 0
execute if score rd mips32r6_cpu matches 30 store result score value mips32r6_reg run data get storage mips32r6:reg cp0.errorepc
execute if score rd mips32r6_cpu matches 31.. run tellraw @p [{"text":"cp0 ","color":"red"},{"score":{"name":"rd","objective":"mips32r6_cpu"},"color":"red"},{"text":" not implemented!","color":"red"}]
execute if score rd mips32r6_cpu matches 31.. run scoreboard players set running mips32r6_tick 0

# Save result to rt register
scoreboard players operation address mips32r6_reg = rt mips32r6_cpu
function mips32r6:reg/write