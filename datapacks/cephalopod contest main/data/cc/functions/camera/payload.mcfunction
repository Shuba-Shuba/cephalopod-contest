# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 437.0 93 472
execute if score %map game matches 0 if score %camera1 game matches 0 run summon minecraft:item_display 427 90 472 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 5 run function cc:camera_move {duration:29,to:"456 90 472"}
execute if score %map game matches 0 if score %camera1 game matches 34 run function cc:camera_move {duration:17,to:"456 90 489"}
execute if score %map game matches 0 if score %camera1 game matches 51 run function cc:camera_move {duration:24,to:"480 90 489"}
execute if score %map game matches 0 if score %camera1 game matches 75 run function cc:camera_move {duration:11,to:"480 90 478"}
execute if score %map game matches 0 if score %camera1 game matches 86 run function cc:camera_move {duration:3,to:"483 90 478"}
execute if score %map game matches 0 if score %camera1 game matches 89 run function cc:camera_move {duration:22,to:"483 90 456"}
execute if score %map game matches 0 if score %camera1 game matches 111 run function cc:camera_move {duration:3,to:"480 90 456"}
execute if score %map game matches 0 if score %camera1 game matches 114 run function cc:camera_move {duration:14,to:"480 90 442.0"}
execute if score %map game matches 0 if score %camera1 game matches 128 run function cc:camera_move {duration:11,to:"473.0 90 434"}
execute if score %map game matches 0 if score %camera1 game matches 139 run function cc:camera_move {duration:37,to:"436 90 434"}
execute if score %map game matches 0 if score %camera1 game matches 176 run function cc:camera_move {duration:22,to:"436 90 456"}
execute if score %map game matches 0 if score %camera1 game matches 198 run function cc:camera_move {duration:28,to:"464 90 456"}
execute if score %map game matches 0 if score %camera1 game matches 226 run function cc:camera_move {duration:8,to:"464 90 448"}
execute if score %map game matches 0 if score %camera1 game matches 234 run function cc:camera_move {duration:4,to:"468 90 448"}

# titles (ends at 240)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Payload"
execute if score %camera1 game matches 0..70 run title @a[tag=!out] subtitle ["",{"text":"BLU","color":"aqua"}," team ",{"text":"pushes","underlined":true}," the cart"]
execute if score %camera1 game matches 71..140 run title @a[tag=!out] subtitle ["",{"text":"RED","color":"red"}," team ",{"text":"stops","underlined":true}," the cart"]
execute if score %camera1 game matches 141..190 run title @a[tag=!out] subtitle "Random PvP kits"
execute if score %camera1 game matches 191..240 run title @a[tag=!out] subtitle "Respawn = kit change"