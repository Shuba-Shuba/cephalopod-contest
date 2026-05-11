# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 1020 75 264
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display 1020 75 264 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display 709 60 196 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "SkyWars Duels"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "2 people will fight a skywars match"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Winner is safe, loser has to fight again"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Whoever loses last gets eliminated"