# camera movement
scoreboard players add %camera1 game 1

execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add 1515 336
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 1515 72 336 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 10 run function cc:camera_move {duration:50,to:"1515 72 241"}
execute if score %map game matches 0 if score %camera1 game matches 60 run function cc:camera_move {duration:50,to:"1515 72 146"}
execute if score %map game matches 0 if score %camera1 game matches 110 run function cc:camera_move {duration:45,to:"1531 72 57"}
execute if score %map game matches 0 if score %camera1 game matches 155 run function cc:camera_move {duration:25,to:"1519 72 9"}
execute if score %map game matches 0 if score %camera1 game matches 180 run function cc:camera_move {duration:30,to:"1506 72 67"}
#execute if score %map game matches 0 if score %camera1 game matches 0 run summon armor_stand 1515 72 336 {Tags:["camera"],Rotation:[180.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 100 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-170.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 145 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[167.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 170 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[13.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 5..200 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^2
execute if score %map game matches 1 if score %camera1 game matches 0 run forceload add 1719 87
execute if score %map game matches 1 if score %camera1 game matches 0 run summon item_display 1719 100 87 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 1 if score %camera1 game matches 10 run function cc:camera_move {duration:35,to:"1644 100 87"}
execute if score %map game matches 1 if score %camera1 game matches 45 run function cc:camera_move {duration:35,to:"1569 100 87"}
execute if score %map game matches 1 if score %camera1 game matches 80 run function cc:camera_move {duration:13,to:"1569 76 87"}
execute if score %map game matches 1 if score %camera1 game matches 93 run function cc:camera_move {duration:30,to:"1563 75 42"}
execute if score %map game matches 1 if score %camera1 game matches 123 run function cc:camera_move {duration:12,to:"1567 75 15"}
execute if score %map game matches 1 if score %camera1 game matches 135 run function cc:camera_move {duration:15,to:"1584 75 8"}
execute if score %map game matches 1 if score %camera1 game matches 150 run function cc:camera_move {duration:22,to:"1621 74 18"}
execute if score %map game matches 1 if score %camera1 game matches 172 run function cc:camera_move {duration:15,to:"1637 74 29"}
execute if score %map game matches 1 if score %camera1 game matches 187 run function cc:camera_move {duration:15,to:"1663 73 14"}
execute if score %map game matches 1 if score %camera1 game matches 202 run function cc:camera_move {duration:8,to:"1679 73 18"}
#execute if score %map game matches 1 if score %camera1 game matches 0 run summon armor_stand 1719 100 87 {Tags:["camera"],Rotation:[90.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 82 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[0.0f,90.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 95 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[175.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 130 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-135.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 142 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-75.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 164 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-60.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 179 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-135.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 191 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-90.0f,10.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 0..200 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^1.83

# titles (ends at 210)
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Nitro Boat Karts"
execute if score %camera1 game matches 0..70 run title @a[tag=!out] subtitle "Race 3 laps around the ice track to win"
execute if score %camera1 game matches 71..140 run title @a[tag=!out] subtitle "Get items from item boxes on the track"
execute if score %camera1 game matches 141..210 run title @a[tag=!out] subtitle "After 1st winner, you'll have 30 seconds to finish"