# Format: EHB
#
# Purpose: Execution Hazard Barrier
# To stop instruction execution until all execution hazards have been cleared.
#
# Description:
# EHB is used to denote execution hazard barrier. This instruction alters the
# instruction issue behavior on a pipelined processor by stopping execution
# until all execution hazards have been cleared. Other than those that might be
# created as a consequence of setting Status CU0, there are no execution hazards
# visible to an unprivileged program running in User Mode. All execution hazards
# created by previous instructions are cleared for instructions executed
# immediately following the EHB, even if the EHB is executed in the delay slot
# of a branch or jump. The EHB instruction does not clear instruction hazards;
# such hazards are cleared by the JALR.HB, JR.HB, and ERET instructions.

execute if score cpu_level logging matches 1.. run tellraw @p [{"text":"ehb"}]

# TODO: clear applicable hazards
