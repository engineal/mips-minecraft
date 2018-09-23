# mfc0  $k0, $14
scoreboard players set address mem -2147483264
scoreboard players set value mem 1075474432
function asm:mem/write
# addiu $k0, $k0, 4
scoreboard players set address mem -2147483260
scoreboard players set value mem 660209668
function asm:mem/write
# mtc0  $k0, $14
scoreboard players set address mem -2147483256
scoreboard players set value mem 1083863040
function asm:mem/write
# mtc0  $0, $13
scoreboard players set address mem -2147483252
scoreboard players set value mem 1082157056
function asm:mem/write
# mfc0  $k0, $12
scoreboard players set address mem -2147483248
scoreboard players set value mem 1075470336
function asm:mem/write
# andi  $k0, $k0, 0xfffd
scoreboard players set address mem -2147483244
scoreboard players set value mem 861601789
function asm:mem/write
# ori   $k0, $k0, 0x1
scoreboard players set address mem -2147483240
scoreboard players set value mem 928645121
function asm:mem/write
# mtc0  $k0, $12
scoreboard players set address mem -2147483236
scoreboard players set value mem 1083858944
function asm:mem/write
# eret
scoreboard players set address mem -2147483232
scoreboard players set value mem 1107296280
function asm:mem/write
tellraw @p {"text":"Installed exception.o!","color":"green"}
