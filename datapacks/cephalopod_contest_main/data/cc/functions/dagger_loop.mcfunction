scoreboard players remove .r raycast 1
setblock ~ ~ ~ tinted_glass
execute positioned ~-1 ~-1 ~-1 run tag @a[tag=!this,tag=!out,tag=!ded,dx=1,dy=1,dz=1] add dagger_hit
execute if score .r raycast matches 1.. positioned ^ ^ ^0.5 run function cc:dagger_loop