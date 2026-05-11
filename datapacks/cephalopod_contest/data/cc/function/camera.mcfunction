# %camera  = gamemode the current camera path is for
# %camera1 = time in ticks the camera has been running
# %camera2 = camera step data, 0 = not stepping, >1 stepping in a certain dimension

# camera movement step
execute if score %camera2 game matches 1 run function cc:camera_move_tp with storage cc:camera
execute if score %camera2 game matches 2 in cc:chunk run function cc:camera_move_tp with storage cc:camera
execute if score %camera2 game matches 3 in minecraft:the_end run function cc:camera_move_tp with storage cc:camera

# camera tick
execute if score %camera game matches 0 run function cc:camera/lights_out
execute if score %camera game matches 1 run function cc:camera/parkour
execute if score %camera game matches 2 run function cc:camera/bomb_tag
execute if score %camera game matches 3 run function cc:camera/race
execute if score %camera game matches 4 run function cc:camera/red_light_green_light
execute if score %camera game matches 5 run function cc:camera/buttons
execute if score %camera game matches 6 run function cc:camera/koth
execute if score %camera game matches 7 run function cc:camera/rocks
execute if score %camera game matches 8 run function cc:camera/dodgeball
execute if score %camera game matches 9 run function cc:camera/nun_run
execute if score %camera game matches 10 run function cc:camera/sumo
execute if score %camera game matches 11 run function cc:camera/blocks
execute if score %camera game matches 12 run function cc:camera/craft
execute if score %camera game matches 13 run function cc:camera/gun_game
# pothead camera does not exist
execute if score %camera game matches 15 run function cc:camera/skywars
execute if score %camera game matches 16 run function cc:camera/nbk
execute if score %camera game matches 17 run function cc:camera/spleef
execute if score %camera game matches 18 run function cc:camera/uno
execute if score %camera game matches 19 run function cc:camera/admintato
execute if score %camera game matches 20 run function cc:camera/talent
execute if score %camera game matches 21 run function cc:camera/kitpvp
execute if score %camera game matches 22 run function cc:camera/genwars
execute if score %camera game matches 23 run function cc:camera/dog_fight
execute if score %camera game matches 24 run function cc:camera/mini_tnt
execute if score %camera game matches 25 run function cc:camera/micro_battles
execute if score %camera game matches 26 run function cc:camera/payload
execute if score %camera game matches 27 run function cc:camera/cs
execute if score %camera game matches 28 in minecraft:the_end run function cc:camera/boss_fight
execute if score %camera game matches 29 run function cc:camera/disco
execute if score %camera game matches 420 in cc:chunk run function cc:camera/chunk

# anchor player to camera
execute if entity @e[type=#cc:camera,tag=camera,limit=1] as @a[tag=!out,predicate=!cc:is_riding_camera] run ride @s mount @e[type=#cc:camera,tag=camera,limit=1]
#execute if entity @e[type=armor_stand,tag=camera,limit=1] as @a[tag=!out,predicate=!cc:is_riding_camera] run spectate @e[type=armor_stand,tag=camera,limit=1]
execute if score %camera1 game matches 0..5 at @e[type=#cc:camera,tag=camera,limit=1] run forceload add ~ ~