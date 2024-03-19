scoreboard players remove .r raycast 1
execute positioned ~-0.5 ~-1.5 ~-0.5 run tag @a[tag=!this,tag=!out,tag=!ded,dx=0,dy=2,dz=0] add cloak_hit
execute as @a[tag=cloak_hit] positioned as @s positioned ^ ^ ^0.5 run tp @s ~ ~ ~ 
execute if score .r raycast matches 1.. positioned ^ ^ ^0.5 run function lobster:cloak_loop