# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] -215 118 1034
#execute if score %map game matches 1 run tp @a[tag=!out] -215 118 1152
#execute if score %map game matches 2 run tp @a[tag=!out] -215 118 1270
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display -215 118 1034 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display -215 118 1152 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 2 run summon minecraft:item_display -215 118 1270 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Illegal Dog Fight Club"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "Each player has a dog to represent them"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "All the dogs fight each other to death"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Owner of the last dog standing wins"