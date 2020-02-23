scoreboard objectives add mem dummy
scoreboard players set address mem 0
scoreboard players set paddr mem 0
scoreboard players set value mem 0
scoreboard players set kernel mem 0

function hardware:mem/rom/init
function hardware:mem/ram/init

scoreboard players set debug mem 0

say mem initiated
