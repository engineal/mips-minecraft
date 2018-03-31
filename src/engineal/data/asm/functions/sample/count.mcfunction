# This sample program increments address 128 from 0 to 10
#
# C-style code (where i is mem[128]):
# for (int i = 0; i <= 10; i++) {
#     ;
# }
#
# ASM:
# li $t1, 0 # temp var counter for loop
# li $t2, 10 # exit condition
# Loop:
#     beq $t2, $t1, Exit #at 10 we go to Exit, defined below
#     addi $t1, $t1, 1 #increment counter
#     sw $t1, 128($zero)
#     j Loop #jumps back to the top of loop
#
# Exit: #ends the program
#     li $v0,10 #loads the service that exits
#     syscall
#
# Hex:
# 0x00: 0x20090000
# 0x04: 0x200A000A
# 0x08: 0x11490003
# 0x0C: 0x21290001
# 0x10: 0xAC090080
# 0x14: 0x08100002
# 0x18: 0x2002000A
# 0x1C: 0x0000000C

scoreboard players set address mem 0
scoreboard players set value mem 537460736
function asm:mem/write

scoreboard players set address mem 4
scoreboard players set value mem 537526282
function asm:mem/write

scoreboard players set address mem 8
scoreboard players set value mem 289996803
function asm:mem/write

scoreboard players set address mem 12
scoreboard players set value mem 556335105
function asm:mem/write

scoreboard players set address mem 16
scoreboard players set value mem -1408696192
function asm:mem/write

scoreboard players set address mem 20
scoreboard players set value mem 135266306
function asm:mem/write

scoreboard players set address mem 24
scoreboard players set value mem 537001994
function asm:mem/write

scoreboard players set address mem 28
scoreboard players set value mem 12
function asm:mem/write

tellraw @p {"text":"Installed count program!","color":"green"}
