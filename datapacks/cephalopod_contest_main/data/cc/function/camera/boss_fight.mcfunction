# camera movement
scoreboard players add %camera1 game 1

# map loading
execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add 15 0
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 15 80 0 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 0 run function cc:camera_move {duration:59,to:"0 80 15"}
execute if score %map game matches 0 if score %camera1 game matches 20 run place template cc:boss_fight/0 -72 0 -72
execute if score %map game matches 0 if score %camera1 game matches 22 run place template cc:boss_fight/1 -72 0 -24
execute if score %map game matches 0 if score %camera1 game matches 24 run place template cc:boss_fight/2 -72 0 24
execute if score %map game matches 0 if score %camera1 game matches 26 run place template cc:boss_fight/3 -24 0 -72
execute if score %map game matches 0 if score %camera1 game matches 28 run place template cc:boss_fight/4 -24 0 -24
execute if score %map game matches 0 if score %camera1 game matches 30 run place template cc:boss_fight/5 -24 0 24
execute if score %map game matches 0 if score %camera1 game matches 32 run place template cc:boss_fight/6 24 0 -72
execute if score %map game matches 0 if score %camera1 game matches 34 run place template cc:boss_fight/7 24 0 -24
execute if score %map game matches 0 if score %camera1 game matches 36 run place template cc:boss_fight/8 24 0 24
execute if score %map game matches 0 if score %camera1 game matches 38 run place template cc:boss_fight/9 -72 0 -72
execute if score %map game matches 0 if score %camera1 game matches 40 run place template cc:boss_fight/10 -72 0 -24
execute if score %map game matches 0 if score %camera1 game matches 42 run place template cc:boss_fight/11 -72 0 24
execute if score %map game matches 0 if score %camera1 game matches 44 run place template cc:boss_fight/12 -24 0 -72
execute if score %map game matches 0 if score %camera1 game matches 46 run place template cc:boss_fight/13 -24 0 -24
execute if score %map game matches 0 if score %camera1 game matches 48 run place template cc:boss_fight/14 -24 0 24
execute if score %map game matches 0 if score %camera1 game matches 50 run place template cc:boss_fight/15 24 0 -72
execute if score %map game matches 0 if score %camera1 game matches 52 run place template cc:boss_fight/16 24 0 -24
execute if score %map game matches 0 if score %camera1 game matches 54 run place template cc:boss_fight/17 24 0 24
execute if score %map game matches 0 if score %camera1 game matches 56 run place template cc:boss_fight/18 -72 0 -72
execute if score %map game matches 0 if score %camera1 game matches 58 run place template cc:boss_fight/19 -72 0 -24
execute if score %map game matches 0 if score %camera1 game matches 60 run place template cc:boss_fight/20 -72 0 24
execute if score %map game matches 0 if score %camera1 game matches 62 run place template cc:boss_fight/21 -24 0 -72
execute if score %map game matches 0 if score %camera1 game matches 64 run place template cc:boss_fight/22 -24 0 -24
execute if score %map game matches 0 if score %camera1 game matches 66 run place template cc:boss_fight/23 -24 0 24
execute if score %map game matches 0 if score %camera1 game matches 68 run place template cc:boss_fight/24 24 0 -72
execute if score %map game matches 0 if score %camera1 game matches 70 run place template cc:boss_fight/25 24 0 -24
execute if score %map game matches 0 if score %camera1 game matches 72 run place template cc:boss_fight/26 24 0 24
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