# camera reset
function cc:camera_end

# map
execute if score %map game matches 0 in cc:void as @a[tag=!out] run tp @s @e[type=marker,tag=gungame_spawn,scores={map=0},limit=1,sort=random]
execute if score %map game matches 1 in cc:void run spreadplayers 343 620 10 25 under 155 false @a[tag=!out]
execute if score %map game matches 2 in cc:void run spreadplayers 396 600 0 14 under 108 false @a[tag=!out]
execute if score %map game matches 3 in cc:void run spreadplayers 448 620 5 24 under 133 false @a[tag=!out]
execute if score %map game matches 4 in cc:void run spreadplayers -437 1045 15 48 false @a[tag=!out]
execute if score %map game matches 5 in cc:void run spreadplayers 582 611 5 18 under 103 false @a[tag=!out]
execute if score %map game matches 6 in cc:void run spreadplayers 639 613 10 20 under 120 false @a[tag=!out]
execute if score %map game matches 7 as @a[tag=!out] at @s in cc:void run function cc:space_jumps_tp

# start game
clear @a[tag=!out]
scoreboard players set %mode game 13
scoreboard players reset * tier
scoreboard players set @a tier 0
scoreboard players set @a kills 0
scoreboard objectives setdisplay sidebar tier
bossbar set cc:time value 0
scoreboard players set %second game 0
execute as @a[tag=!out] run function shb:give/sniper
execute in cc:void run function cc:gun_game_pickup
scoreboard players set rep.recording config 1