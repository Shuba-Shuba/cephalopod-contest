# player reset
tag @a[tag=winner] remove ded
gamemode adventure @a[tag=!out,tag=!ded]
gamemode spectator @a[tag=!out,tag=ded]
clear @a[tag=!out,tag=!ded]
effect clear @a[tag=!out,tag=!ded]
tag @a remove winner
effect give @a regeneration 3 255 true

# scoreboard reset
scoreboard players set %in game 1
scoreboard players set %map game 0
scoreboard players set %premode game 0
scoreboard players set %mode game -1
scoreboard players set @a kills 0
scoreboard players set @a deaths 0
scoreboard players set %bomb game 0
scoreboard objectives setdisplay sidebar

# mode rng
function cc:next_round_rng
execute if score %premode game matches 0 in cc:void run function cc:intro/lights_out
execute if score %premode game matches 1 in cc:void run function cc:intro/parkour
execute if score %premode game matches 2 in cc:void run function cc:intro/bomb_tag
execute if score %premode game matches 3 in cc:void run function cc:intro/race
execute if score %premode game matches 4 in cc:void run function cc:intro/red_light_green_light
execute if score %premode game matches 5 in cc:void run function cc:intro/buttons
execute if score %premode game matches 6 in cc:void run function cc:intro/koth
execute if score %premode game matches 7 in cc:void run function cc:intro/rocks
execute if score %premode game matches 8 in cc:void run function cc:intro/dodgeball
execute if score %premode game matches 9 in cc:void run function cc:intro/nun_run
execute if score %premode game matches 10 in cc:void run function cc:intro/sumo
execute if score %premode game matches 11 in cc:void run function cc:intro/blocks
execute if score %premode game matches 12 in cc:void run function cc:intro/craft
execute if score %premode game matches 13 in cc:void run function cc:intro/gun_game
execute if score %premode game matches 14 in cc:void run function cc:intro/drugs
execute if score %premode game matches 15 in cc:void run function cc:intro/skywars
execute if score %premode game matches 16 in cc:void run function cc:intro/nbk_camera
execute if score %premode game matches 17 in cc:void run function cc:intro/spleef
execute if score %premode game matches 18 in cc:void run function cc:intro/uno
execute if score %premode game matches 19 in cc:void run function cc:intro/admintato
execute if score %premode game matches 20 in cc:void run function cc:intro/talent
execute if score %premode game matches 21 in cc:void run function cc:intro/kitpvp
execute if score %premode game matches 22 in cc:void run function cc:intro/genwars
execute if score %premode game matches 23 in cc:void run function cc:intro/dog_fight
execute if score %premode game matches 24 in cc:void run function cc:intro/mini_tnt
execute if score %premode game matches 25 in cc:void run function cc:intro/micro_battles
execute if score %premode game matches 26 in cc:void run function cc:intro/payload
execute if score %premode game matches 27 in cc:void run function cc:intro/cs
execute if score %premode game matches 28 in minecraft:the_end run function cc:intro/boss_fight
execute if score %premode game matches 29 in cc:void run function cc:intro/disco
execute if score %premode game matches 69 in cc:void run function cc:mode/shard_room
execute if score %premode game matches 420 in cc:chunk run function cc:intro/chunk