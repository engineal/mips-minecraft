# Trap handler in the standard MIPS32 kernel text segment
.ktext 0x80000180
;    mtc0 $k0,$14   # Store new address back into $14		# 010000 00100 11010 01110 00000000 000 # ‭0x409A7000
    eret           # Error return; set PC to value in $14	# 010000 1 0000000000000000000 011000   # 0x42000018
