# camera movement
scoreboard players add %camera1 game 1

execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add -163 16
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display -163 53 16 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 0 run function cc:green_light
execute if score %map game matches 0 if score %camera1 game matches 0 run function cc:camera_move {duration:59,to:"-163 53 44"}
execute if score %map game matches 0 if score %camera1 game matches 60 run function cc:red_sound
execute if score %map game matches 0 if score %camera1 game matches 60 run function cc:red_light
execute if score %map game matches 0 if score %camera1 game matches 120 run function cc:green_light
execute if score %map game matches 0 if score %camera1 game matches 120 run function cc:camera_move {duration:59,to:"-163 53 72"}
#execute if score %map game matches 0 if score %camera1 game matches 0 run summon armor_stand -163 53 16 {Tags:["camera"],Rotation:[0.0f,0.0f]}
#execute if score %map game matches 0 if score %camera1 game matches 1..180 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^.3

execute positioned as @e[type=marker,tag=camera,limit=1] run tp @a[tag=!out] ~ ~ ~

# titles (ends at 180)
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Red Light Green Light"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle ["You will have ",{"score":{"name":"time.rlgl","objective":"config"}}," seconds to get to the other side"]
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "If you move on a red light, you will die"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Watch out! Players can punch each other"