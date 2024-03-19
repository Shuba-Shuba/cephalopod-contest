scoreboard players set @s deaths 0
tag @s remove ded
execute if score %map game matches 0 in sp:void run tp @s @e[type=marker,tag=gungame_spawn,scores={map=0},limit=1,sort=random]
execute if score %map game matches 1 in sp:void run spreadplayers 343 620 10 25 under 155 false @s
execute if score %map game matches 2 in sp:void run spreadplayers 396 600 0 14 under 108 false @s
execute if score %map game matches 3 in sp:void run spreadplayers 448 620 5 24 under 133 false @s
execute if score %map game matches 4 in sp:void run spreadplayers -437 1045 15 48 false @s
execute if score %map game matches 5 in sp:void run spreadplayers 582 611 5 18 under 103 false @s
execute if score %map game matches 6 in sp:void run spreadplayers 639 613 10 20 under 106 false @s
execute if score %map game matches 7 in sp:void run function lobster:space_jumps_tp
function battle:kits/random

#me died