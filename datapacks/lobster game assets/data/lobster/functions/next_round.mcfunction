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
function lobster:next_round_rng
execute if score %premode game matches 0 in sp:void run function lobster:intro/lights_out
execute if score %premode game matches 1 in sp:void run function lobster:intro/parkour
execute if score %premode game matches 2 in sp:void run function lobster:intro/bomb_tag
execute if score %premode game matches 3 in sp:void run function lobster:intro/race
execute if score %premode game matches 4 in sp:void run function lobster:intro/red_light_green_light
execute if score %premode game matches 5 in sp:void run function lobster:intro/buttons
execute if score %premode game matches 6 in sp:void run function lobster:intro/koth
execute if score %premode game matches 7 in sp:void run function lobster:intro/rocks
execute if score %premode game matches 8 in sp:void run function lobster:intro/dodgeball
execute if score %premode game matches 9 in sp:void run function lobster:intro/nun_run
execute if score %premode game matches 10 in sp:void run function lobster:intro/sumo
execute if score %premode game matches 11 in sp:void run function lobster:intro/blocks
execute if score %premode game matches 12 in sp:void run function lobster:intro/craft
execute if score %premode game matches 13 in sp:void run function lobster:intro/gun_game
execute if score %premode game matches 14 in sp:void run function lobster:intro/drugs
execute if score %premode game matches 15 in sp:void run function lobster:intro/skywars
execute if score %premode game matches 16 in sp:void run function lobster:intro/nbk_camera
execute if score %premode game matches 17 in sp:void run function lobster:intro/spleef
execute if score %premode game matches 18 in sp:void run function lobster:intro/uno
execute if score %premode game matches 19 in sp:void run function lobster:intro/admintato
execute if score %premode game matches 20 in sp:void run function lobster:intro/talent
execute if score %premode game matches 21 in sp:void run function lobster:intro/kitpvp
execute if score %premode game matches 22 in sp:void run function lobster:intro/genwars
execute if score %premode game matches 23 in sp:void run function lobster:intro/dog_fight
execute if score %premode game matches 24 in sp:void run function lobster:intro/mini_tnt
execute if score %premode game matches 25 in sp:void run function lobster:intro/micro_battles
execute if score %premode game matches 26 in sp:void run function lobster:intro/payload
execute if score %premode game matches 27 in sp:void run function lobster:intro/cs
execute if score %premode game matches 28 in minecraft:the_end run function lobster:intro/boss_fight
execute if score %premode game matches 29 in sp:void run function lobster:intro/disco
execute if score %premode game matches 69 in sp:void run function lobster:mode/shard_room
execute if score %premode game matches 420 in lobster:chunk run function lobster:intro/chunk