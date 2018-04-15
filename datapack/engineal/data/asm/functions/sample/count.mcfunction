# This sample program increments address 127 from 0 to 10
#
# 0x00: 0x20090000  # main: li $t1, 0               # temp var counter for loop
# 0x04: 0x200A000A  #       li $t2, 10              # exit condition
# 0x08: 0x20020001  #       li $v0, 1               # syscall is print_int
# 0x0C: 0x11490005  # Loop: beq $t2, $t1, Exit      # at 10 we go to Exit, defined below
# 0x10: 0x21290001  #       addi $t1, $t1, 1        # increment counter
# 0x14: 0xAC090080  #       sw $t1, 127($zero)      # store counter in memory
# 0x18: 0x01202020  #       add $a0, $t1, $zero     # print counter
# 0x1C: 0x0000000C  #       syscall
# 0x20: 0x08000002  #       j Loop                  # jumps back to the top of loop
# 0x24: 0x2002000A  # Exit: li $v0,10               # loads the service that exits
# 0x28: 0x0000000C  #       syscall

scoreboard players set address mem 0
scoreboard players set value mem 537460736
function asm:mem/write

scoreboard players set address mem 4
scoreboard players set value mem 537526282
function asm:mem/write

scoreboard players set address mem 8
scoreboard players set value mem 537001985
function asm:mem/write

scoreboard players set address mem 12
scoreboard players set value mem 289996805
function asm:mem/write

scoreboard players set address mem 16
scoreboard players set value mem 556335105
function asm:mem/write

scoreboard players set address mem 20
scoreboard players set value mem -1408696192
function asm:mem/write

scoreboard players set address mem 24
scoreboard players set value mem 18882592
function asm:mem/write

scoreboard players set address mem 28
scoreboard players set value mem 12
function asm:mem/write

scoreboard players set address mem 32
scoreboard players set value mem 134217730
function asm:mem/write

scoreboard players set address mem 36
scoreboard players set value mem 537001994
function asm:mem/write

scoreboard players set address mem 40
scoreboard players set value mem 12
function asm:mem/write

tellraw @p {"text":"Installed count program!","color":"green"}
