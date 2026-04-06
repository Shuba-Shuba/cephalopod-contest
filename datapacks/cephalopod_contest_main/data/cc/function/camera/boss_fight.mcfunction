# camera movement
scoreboard players add %camera1 game 1

# map loading
execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add 15 0
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 15 80 0 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 0 run function cc:camera_move {duration:59,to:"0 80 15"}
execute if score %map game matches 0 if score %camera1 game matches 60 run place template cc:boss_fight -80 0 -80
execute if score %map game matches 0 if score %camera1 game matches 60 run fill -79 109 -79 79 254 79 air
execute if score %map game matches 0 if score %camera1 game matches 61 run function cc:camera_move {duration:59,to:"-15 80 0"}
execute if score %map game matches 0 if score %camera1 game matches 120 run function cc:camera_move {duration:59,to:"0 80 -15"}
execute if score %map game matches 0 if score %camera1 game matches 179 run function cc:camera_move {duration:59,to:"15 80 0"}

# titles (ends at 240)
execute if score %camera1 game matches 0 run title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Boss Fight"
execute if score %camera1 game matches 0..90 run title @a[tag=!out] subtitle "Fight the ender dragon, PvP on"
execute if score %camera1 game matches 91..140 run title @a[tag=!out] subtitle "1 damage to dragon = 1 point"
execute if score %camera1 game matches 141..190 run title @a[tag=!out] subtitle "Kill other player = 25 points"
execute if score %camera1 game matches 191..240 run title @a[tag=!out] subtitle "Death = instant loss"