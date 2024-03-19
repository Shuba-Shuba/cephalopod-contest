#say executor = @s
#say this = @e[tag=this]
execute positioned as @s rotated as @e[tag=this,limit=1] run function lobster:gravity_launch
function shb:raycast/hit
scoreboard players set .r raycast 0