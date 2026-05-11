# camera reset
function cc:camera_end
gamemode spectator @a[tag=!out,tag=!ded]

# clock
scoreboard objectives setdisplay sidebar
scoreboard players set %mode game 23
scoreboard players set %second game 0
kill @e[type=wolf]
execute if score %map game matches 0 as @a[tag=!out,tag=!ded] positioned -215 116 1034 in cc:void run function cc:dog_fight_start
execute if score %map game matches 1 as @a[tag=!out,tag=!ded] positioned -215 116 1152 in cc:void run function cc:dog_fight_start
execute if score %map game matches 2 as @a[tag=!out,tag=!ded] positioned -215 116 1270 in cc:void run function cc:dog_fight_start
execute at @e[type=wolf,sort=random,limit=1] run spreadplayers ~ ~ 0 3 under 118 false @e[type=wolf]