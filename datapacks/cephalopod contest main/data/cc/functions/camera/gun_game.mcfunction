# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 117 100 -9
#execute if score %map game matches 1 run tp @a[tag=!out] 343 140 620
#execute if score %map game matches 2 run tp @a[tag=!out] 396 105 600
#execute if score %map game matches 3 run tp @a[tag=!out] 448 115 620
#execute if score %map game matches 4 run tp @a[tag=!out] -438 140 1045
#execute if score %map game matches 5 run tp @a[tag=!out] 582 102 611
#execute if score %map game matches 6 run tp @a[tag=!out] 639 107 613
#execute if score %map game matches 7 run tp @a[tag=!out] 714 150 617
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display 117 100 -9 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display 343 140 620 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 2 run summon minecraft:item_display 396 105 600 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 3 run summon minecraft:item_display 448 115 620 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 4 run summon minecraft:item_display -438 140 1045 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 5 run summon minecraft:item_display 582 102 611 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 6 run summon minecraft:item_display 639 107 613 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 7 run summon minecraft:item_display 714 150 617 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Gun Game"
execute if score %camera1 game matches 0..45 run title @a[tag=!out] subtitle "Shoot other players to upgrade your gun"
execute if score %camera1 game matches 46..90 run title @a[tag=!out] subtitle "You will spectate after getting a knife kill"
execute if score %camera1 game matches 91..135 run title @a[tag=!out] subtitle "Last player to get a knife kill loses"
execute if score %camera1 game matches 136..180 run title @a[tag=!out] subtitle ["IMPORTANT: Press [",{"keybind":"key.use"},"] to shoot guns"]