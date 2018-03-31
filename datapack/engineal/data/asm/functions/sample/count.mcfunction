# This sample program increments address 127 from 0 to 10
#
# 0x00: 0x20090000  # main: li $t1, 0               # temp var counter for loop
# 0x04: 0x200A000A  #       li $t2, 10              # exit condition
# 0x08: 0x11490003  # Loop: beq $t2, $t1, Exit      # at 10 we go to Exit, defined below
# 0x0C: 0x21290001  #       addi $t1, $t1, 1        # increment counter
# 0x10: 0xAC090080  #       sw $t1, 127($zero)      # store counter in memory
# 0x14: 0x08000002  #       j Loop                  # jumps back to the top of loop
# 0x18: 0x2002000A  # Exit: li $v0,10               # loads the service that exits
# 0x1C: 0x0000000C  #       syscall

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
scoreboard players set value mem 134217730
function asm:mem/write

scoreboard players set address mem 24
scoreboard players set value mem 537001994
function asm:mem/write

scoreboard players set address mem 28
scoreboard players set value mem 12
function asm:mem/write

tellraw @p {"text":"Installed count program!","color":"green"}
