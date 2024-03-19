# camera movement
scoreboard players add %camera1 game 1

execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add 15 0
# map loading
execute if score %camera1 game matches 59 run title @a[tag=!out] title "Resetting map..."
execute if score %camera1 game matches 59 run title @a[tag=!out] subtitle "this usually takes 5-10 seconds"
execute if score %camera1 game matches 59 run worldborder add -60000 60
execute if score %map game matches 0 if score %camera1 game matches 60 run forceload add -80 -80
execute if score %map game matches 0 if score %camera1 game matches 60 run place template cc:boss_fight -80 0 -80
execute if score %map game matches 0 if score %camera1 game matches 60 run fill -79 109 -79 79 254 79 air
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 15 80 0 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 0 run function cc:camera_move {duration:59,to:"0 80 15"}
execute if score %map game matches 0 if score %camera1 game matches 61 run function cc:camera_move {duration:59,to:"-15 80 0"}
execute if score %map game matches 0 if score %camera1 game matches 120 run function cc:camera_move {duration:59,to:"0 80 -15"}
execute if score %map game matches 0 if score %camera1 game matches 179 run function cc:camera_move {duration:59,to:"15 80 0"}
#execute if score %map game matches 0 if score %camera1 game matches 0 run summon armor_stand 15 80 0 {Tags:["camera"],Rotation:[0f,0f]}
#execute if score %map game matches 0 if score %camera1 game matches 1..240 as @e[type=armor_stand,tag=camera,limit=1] at @s run tp @s ^ ^ ^0.3927 ~1.5 ~

# end timer
execute if score %map game matches 0 if score %camera1 game matches 61 store result score #dwb game run worldborder get
execute if score %map game matches 0 if score %camera1 game matches 61 run scoreboard players remove #dwb game 59999968
execute if score %map game matches 0 if score %camera1 game matches 61 run scoreboard players operation #dwb game *= -1 calc
execute if score %map game matches 0 if score %camera1 game matches 61 run worldborder set 59999968
execute if score %map game matches 0 if score %camera1 game matches 61 run tellraw @a ["map reset time: ",{"score":{"name":"#dwb","objective":"game"}}," ms"]

# titles (ends at 240)
execute if score %camera1 game matches 59 run title @a[tag=!out] times 0 60s 0
execute unless score %camera1 game matches 59 run title @a[tag=!out] times 0 100 0
execute unless score %camera1 game matches 59 run title @a[tag=!out] title "Boss Fight"
execute if score %camera1 game matches 0..90 unless score %camera1 game matches 49 run title @a[tag=!out] subtitle "Fight the ender dragon, PvP on"
execute if score %camera1 game matches 91..140 run title @a[tag=!out] subtitle "1 damage to dragon = 1 point"
execute if score %camera1 game matches 141..190 run title @a[tag=!out] subtitle "Kill other player = 25 points"
execute if score %camera1 game matches 191..240 run title @a[tag=!out] subtitle "Death = instant loss"