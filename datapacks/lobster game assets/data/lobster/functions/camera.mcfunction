# %camera  = gamemode the current camera path is for
# %camera1 = time in ticks the camera has been running
# %camera2 = camera step data, 0 = not stepping, >1 stepping in a certain dimension

# camera movement step
execute if score %camera2 game matches 1 run function lobster:camera_move_tp with storage lobster:camera
execute if score %camera2 game matches 2 in lobster:chunk run function lobster:camera_move_tp with storage lobster:camera
execute if score %camera2 game matches 3 in minecraft:the_end run function lobster:camera_move_tp with storage lobster:camera

# camera tick
execute if score %camera game matches 0 run function lobster:camera/lights_out
execute if score %camera game matches 1 run function lobster:camera/parkour
execute if score %camera game matches 2 run function lobster:camera/bomb_tag
execute if score %camera game matches 3 run function lobster:camera/race
execute if score %camera game matches 4 run function lobster:camera/red_light_green_light
execute if score %camera game matches 5 run function lobster:camera/buttons
execute if score %camera game matches 6 run function lobster:camera/koth
execute if score %camera game matches 7 run function lobster:camera/rocks
execute if score %camera game matches 8 run function lobster:camera/dodgeball
execute if score %camera game matches 9 run function lobster:camera/nun_run
execute if score %camera game matches 10 run function lobster:camera/sumo
execute if score %camera game matches 11 run function lobster:camera/blocks
execute if score %camera game matches 12 run function lobster:camera/craft
execute if score %camera game matches 13 run function lobster:camera/gun_game
# pothead camera does not exist
execute if score %camera game matches 15 run function lobster:camera/skywars
execute if score %camera game matches 16 run function lobster:camera/nbk
execute if score %camera game matches 17 run function lobster:camera/spleef
execute if score %camera game matches 18 run function lobster:camera/uno
execute if score %camera game matches 19 run function lobster:camera/admintato
execute if score %camera game matches 20 run function lobster:camera/talent
execute if score %camera game matches 21 run function lobster:camera/kitpvp
execute if score %camera game matches 22 run function lobster:camera/genwars
execute if score %camera game matches 23 run function lobster:camera/dog_fight
execute if score %camera game matches 24 run function lobster:camera/mini_tnt
execute if score %camera game matches 25 run function lobster:camera/micro_battles
execute if score %camera game matches 26 run function lobster:camera/payload
execute if score %camera game matches 27 run function lobster:camera/cs
execute if score %camera game matches 28 in minecraft:the_end run function lobster:camera/boss_fight
execute if score %camera game matches 29 run function lobster:camera/disco
execute if score %camera game matches 420 in lobster:chunk run function lobster:camera/chunk

# anchor player to camera
execute if entity @e[type=#lobster:camera,tag=camera,limit=1] as @a[tag=!out,predicate=!lobster:is_riding_camera] run ride @s mount @e[type=#lobster:camera,tag=camera,limit=1]
#execute if entity @e[type=armor_stand,tag=camera,limit=1] as @a[tag=!out,predicate=!lobster:is_riding_camera] run spectate @e[type=armor_stand,tag=camera,limit=1]
execute if score %camera1 game matches 0..5 at @e[type=#lobster:camera,tag=camera,limit=1] run forceload add ~ ~