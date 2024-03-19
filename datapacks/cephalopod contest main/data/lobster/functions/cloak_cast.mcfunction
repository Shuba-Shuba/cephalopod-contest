# start raycast
tag @a remove cloak_hit
scoreboard players set .r raycast 11
tag @s add this
function lobster:cloak_loop
execute as @a[tag=cloak_hit] positioned as @s positioned ^ ^ ^0.2 run function lobster:cloak_unstuck
execute as @a[tag=cloak_hit] positioned as @s positioned ^ ^ ^0.7 run tp @s ~ ~ ~ 
tag @s remove this