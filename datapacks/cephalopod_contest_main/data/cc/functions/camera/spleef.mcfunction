# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] -241 120 959
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display -241 120 959 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Spleef"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "2 people will fight a spleef match"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Winner is safe, loser has to fight again"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Whoever loses last gets eliminated"