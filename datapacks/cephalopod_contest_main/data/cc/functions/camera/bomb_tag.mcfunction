# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 167 112 -3
#execute if score %map game matches 1 run tp @a[tag=!out] 171 118 -72
#execute if score %map game matches 2 run tp @a[tag=!out] 187 115 -200
#execute if score %map game matches 3 run tp @a[tag=!out] 113 85.5 57
#execute if score %map game matches 4 run tp @a[tag=!out] 44 117 391
#execute if score %map game matches 5 run tp @a[tag=!out] 247 129 609
#execute if score %map game matches 6 run tp @a[tag=!out] 259 103 50
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display 167 112 -3 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display 171 118 -72 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 2 run summon minecraft:item_display 187 115 -200 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 3 run summon minecraft:item_display 113 85.5 57 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 4 run summon minecraft:item_display 44 117 391 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 5 run summon minecraft:item_display 247 129 609 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 6 run summon minecraft:item_display 259 103 50 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Bomb Tag"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "Someone will have the bomb"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "They need to punch someone to pass it on"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "When the timer hits 5 seconds, the bomb explodes"