scoreboard objectives add mips32r6_cop0 dummy
scoreboard players set index mips32r6_cop0 0
scoreboard players set value mips32r6_cop0 0

data modify storage mips32r6:reg CP0.Random set value 0
#data modify storage mips32r6:reg CP0.UserLocal set value 0
#data modify storage mips32r6:reg CP0.HWREna set value 0
data modify storage mips32r6:reg CP0.BadVAddr set value 0
#data modify storage mips32r6:reg CP0.BadInstr set value 0
#data modify storage mips32r6:reg CP0.BadInstrP set value 0
data modify storage mips32r6:reg CP0.Count set value 0
data modify storage mips32r6:reg CP0.Compare set value 0
data modify storage mips32r6:reg CP0.Status.IE set value 0
data modify storage mips32r6:reg CP0.Status.EXL set value 0
data modify storage mips32r6:reg CP0.Status.ERL set value 1
data modify storage mips32r6:reg CP0.Status.UM set value 0
data modify storage mips32r6:reg CP0.Status.IM set value [0,0,0,0,0,0,0,0]
data modify storage mips32r6:reg CP0.Status.BEV set value 1
data modify storage mips32r6:reg CP0.Status.RW set value 0
#data modify storage mips32r6:reg CP0.IntCtl set value 0
#data modify storage mips32r6:reg CP0.SRSCtl set value 0
data modify storage mips32r6:reg CP0.Cause set value 0
data modify storage mips32r6:reg CP0.EPC set value 0
#data modify storage mips32r6:reg CP0.PRId set value 0
#data modify storage mips32r6:reg CP0.EBase set value 0
#data modify storage mips32r6:reg CP0.Config set value 0
#data modify storage mips32r6:reg CP0.Config1 set value 0
data modify storage mips32r6:reg CP0.ErrorEPC set value 0
#data modify storage mips32r6:reg CP0.KScratch set value []
