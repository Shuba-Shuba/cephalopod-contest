tag @s remove tmp_dead
gamemode spectator @s
tp @r[tag=!out,tag=!ded,gamemode=adventure]
execute if score %map game matches 0 if entity @s[team=red] unless block 1000 -50 -230 red_bed run function cc:death_genwars_red
execute if score %map game matches 0 if entity @s[team=blue] unless block 1000 -50 -270 blue_bed run function cc:death_genwars_blue
execute if score %map game matches 0 if entity @s[team=green] unless block 1020 -50 -250 green_bed run function cc:death_genwars_green
execute if score %map game matches 0 if entity @s[team=yellow] unless block 980 -50 -250 yellow_bed run function cc:death_genwars_yellow
execute if score %map game matches 1 if entity @s[team=red] unless block 1370 -45 -232 red_bed run function cc:death_genwars_red
execute if score %map game matches 1 if entity @s[team=blue] unless block 1265 -45 -231 blue_bed run function cc:death_genwars_blue
execute if score %map game matches 1 if entity @s[team=green] unless block 1317 -45 -287 green_bed run function cc:death_genwars_green
execute if score %map game matches 1 if entity @s[team=yellow] unless block 1317 -46 -179 yellow_bed run function cc:death_genwars_yellow
title @s[tag=!ded] times 0 100 0
scoreboard players operation @s[tag=!ded] death_time = time.genwars_respawn config