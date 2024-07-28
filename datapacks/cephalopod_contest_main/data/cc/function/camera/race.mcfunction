# camera movement
scoreboard players add %camera1 game 1

execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add -4 -176
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display -4.0 75 -176 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 0 run function cc:camera_move {duration:35,to:"-4.0 75 -207.75"}
execute if score %map game matches 0 if score %camera1 game matches 35 run function cc:camera_move {duration:35,to:"-4.0 75 -240.0"}
execute if score %map game matches 0 if score %camera1 game matches 70 run function cc:camera_move {duration:20,to:"10.0 75 -240.0"}
execute if score %map game matches 0 if score %camera1 game matches 90 run function cc:camera_move {duration:30,to:"10.0 75 -261"}
execute if score %map game matches 0 if score %camera1 game matches 120 run function cc:camera_move {duration:15,to:"1 76 -253"}
execute if score %map game matches 0 if score %camera1 game matches 135 run function cc:camera_move {duration:15,to:"-6.0 76 -253"}
execute if score %map game matches 0 if score %camera1 game matches 150 run function cc:camera_move {duration:15,to:"-6.0 78 -262.0"}
execute if score %map game matches 0 if score %camera1 game matches 165 run function cc:camera_move {duration:15,to:"-18 83 -252"}
#execute if score %map game matches 0 if score %camera1 game matches 0 run summon armor_stand -4.0 75 -176 {Tags:["camera"],Rotation:[180.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 80 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-90.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 100 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[180.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 130 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[90.0f,-10.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 1..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.75

execute if score %map game matches 1 if score %camera1 game matches 0 run forceload add 73 -162
execute if score %map game matches 1 if score %camera1 game matches 0 run summon item_display 73 66 -162 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 1 if score %camera1 game matches 0 run function cc:camera_move {duration:59,to:"73 62 -209"}
execute if score %map game matches 1 if score %camera1 game matches 59 run function cc:camera_move {duration:36,to:"91 62 -209"}
execute if score %map game matches 1 if score %camera1 game matches 95 run function cc:camera_move {duration:10,to:"91 62 -214"}
execute if score %map game matches 1 if score %camera1 game matches 105 run function cc:camera_move {duration:16,to:"98 62 -214"}
execute if score %map game matches 1 if score %camera1 game matches 121 run function cc:camera_move {duration:59,to:"98 62 -246"}
#execute if score %map game matches 1 if score %camera1 game matches 0 run summon armor_stand 73 66 -162 {Tags:["camera"],Rotation:[180.0f,5.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 1..60 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.785
#execute if score %map game matches 1 if score %camera1 game matches 61 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-90.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 61..85 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.75
#execute if score %map game matches 1 if score %camera1 game matches 86 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[180.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 86..91 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.75
#execute if score %map game matches 1 if score %camera1 game matches 92 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-90.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 92..100 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.75
#execute if score %map game matches 1 if score %camera1 game matches 101 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[180.0f,0.0f]}
#execute if score %map game matches 1 if score %camera1 game matches 101..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.375

execute if score %map game matches 2 if score %camera1 game matches 0 run forceload add 9 -342
execute if score %map game matches 2 if score %camera1 game matches 0 run summon item_display 9 73 -342 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 2 if score %camera1 game matches 0 run function cc:camera_move {duration:45,to:"9 71.5 -370.25"}
execute if score %map game matches 2 if score %camera1 game matches 45 run function cc:camera_move {duration:45,to:"9 70 -399.0"}
execute if score %map game matches 2 if score %camera1 game matches 90 run function cc:camera_move {duration:45,to:"9 68.5 -427.75"}
execute if score %map game matches 2 if score %camera1 game matches 135 run function cc:camera_move {duration:45,to:"9 67 -456.5"}
#execute if score %map game matches 2 if score %camera1 game matches 0 run summon armor_stand 9 73 -342 {Tags:["camera"],Rotation:[180.0f,3.0f]}
#execute if score %map game matches 2 if score %camera1 game matches 1..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.64

execute if score %map game matches 3 if score %camera1 game matches 0 run forceload add 153 -261
execute if score %map game matches 3 if score %camera1 game matches 0 run summon item_display 153.0 67 -261 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 3 if score %camera1 game matches 0 run function cc:camera_move {duration:40,to:"153.0 64.5 -289.25"}
execute if score %map game matches 3 if score %camera1 game matches 40 run function cc:camera_move {duration:40,to:"153.0 62 -318.0"}
execute if score %map game matches 3 if score %camera1 game matches 80 run function cc:camera_move {duration:20,to:"153.0 46 -318.0"}
execute if score %map game matches 3 if score %camera1 game matches 100 run function cc:camera_move {duration:30,to:"153 48 -294"}
execute if score %map game matches 3 if score %camera1 game matches 135 run function cc:camera_move {duration:50,to:"153 47 -258"}
#execute if score %map game matches 3 if score %camera1 game matches 0 run summon armor_stand 153.0 67 -261 {Tags:["camera"],Rotation:[180.0f,0.0f]}
#execute if score %map game matches 3 if score %camera1 game matches 1..80 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.625
#execute if score %map game matches 3 if score %camera1 game matches 81 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[0.0f,90.0f]}
#execute if score %map game matches 3 if score %camera1 game matches 81..100 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.7
#execute if score %map game matches 3 if score %camera1 game matches 101 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[0.0f,0.0f]}
#execute if score %map game matches 3 if score %camera1 game matches 101..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.625

execute if score %map game matches 4 if score %camera1 game matches 0 run forceload add -307 333
execute if score %map game matches 4 if score %camera1 game matches 0 run summon item_display -307 65 333 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 4 if score %camera1 game matches 0 run function cc:camera_move {duration:59,to:"-234 65 332"}
execute if score %map game matches 4 if score %camera1 game matches 60 run function cc:camera_move {duration:59,to:"-234 160 332"}
execute if score %map game matches 4 if score %camera1 game matches 120 run function cc:camera_move {duration:59,to:"-102.0 150 339.0"}
#execute if score %map game matches 4 if score %camera1 game matches 0 run summon armor_stand -307 64 333 {Tags:["camera"],Rotation:[-90.0f,0.0f]}
#execute if score %map game matches 4 if score %camera1 game matches 1..60 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^1.2
#execute if score %map game matches 4 if score %camera1 game matches 61 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-90.0f,-90.0f]}
#execute if score %map game matches 4 if score %camera1 game matches 61..80 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^4.65
#execute if score %map game matches 4 if score %camera1 game matches 81 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[-90.0f,0.0f]}
#execute if score %map game matches 4 if score %camera1 game matches 81..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^1.3

execute if score %map game matches 5 if score %camera1 game matches 0 run forceload add 256 -293
execute if score %map game matches 5 if score %camera1 game matches 0 run summon item_display 256 111 -293 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"],Rotation:[-140.0f,15.0f]}
execute if score %map game matches 5 if score %camera1 game matches 0 run function cc:camera_move {duration:30,to:"247 109 -313"}
execute if score %map game matches 5 if score %camera1 game matches 30 run function cc:camera_move {duration:25,to:"263 101 -324"}
execute if score %map game matches 5 if score %camera1 game matches 55 run function cc:camera_move {duration:15,to:"263 94 -336"}
execute if score %map game matches 5 if score %camera1 game matches 70 run function cc:camera_move {duration:10,to:"263 81 -336"}
execute if score %map game matches 5 if score %camera1 game matches 80 run function cc:camera_move {duration:35,to:"272 71 -356"}
execute if score %map game matches 5 if score %camera1 game matches 115 run function cc:camera_move {duration:35,to:"253 77 -355"}
execute if score %map game matches 5 if score %camera1 game matches 150 run function cc:camera_move {duration:30,to:"242 76 -344"}
#execute if score %map game matches 5 if score %camera1 game matches 0 run summon armor_stand 256 111 -293 {Tags:["camera"],Rotation:[-140.0f,15.0f]}
#execute if score %map game matches 5 if score %camera1 game matches 1..70 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^0.314
#execute if score %map game matches 5 if score %camera1 game matches 71 run data merge entity @e[type=armor_stand,tag=camera,limit=1] {Rotation:[155.0f,35.0f]}
#execute if score %map game matches 5 if score %camera1 game matches 71..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.5

# titles (ends at 180)
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Race"
execute if score %camera1 game matches 0..120 run title @a[tag=!out] subtitle ["You will have ",{"score":{"name":"time.race","objective":"config"}}," seconds to get to the other side"]
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Watch out! Players can punch each other"