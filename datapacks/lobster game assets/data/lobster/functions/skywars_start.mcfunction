tellraw @a ["Current match: ",{"selector":"@a[tag=skywars]","separator":" vs "},"\nOn deck: ",{"selector":"@a[tag=on_deck]"}]
execute if score %map game matches 0 run place template lobster:skywars0 984 40 219
execute if score %map game matches 1 run place template lobster:skywars_nether 677 28 148
execute positioned 1000 59 264 run kill @e[type=item,distance=..100]
execute positioned 700 50 200 run kill @e[type=item,distance=..100]
tag @r[tag=skywars] add tmp_separate
execute if score %map game matches 0 run tp @a[tag=skywars,tag=tmp_separate] 1000 70 233 0 0
execute if score %map game matches 0 run tp @a[tag=skywars,tag=!tmp_separate] 1000 70 295 180 0
execute if score %map game matches 1 run tp @a[tag=skywars,tag=tmp_separate] 698 30 215
execute if score %map game matches 1 run tp @a[tag=skywars,tag=!tmp_separate] 680 30 177
tag @a remove tmp_separate
execute if score %map game matches 0 run tp @a[tag=winner] 977 71.5 264 -90 0
execute if score %map game matches 0 run tp @a[tag=!skywars,tag=!winner,tag=!out] 1023 71.5 264 90 0
execute if score %map game matches 1 run tp @a[tag=winner] 667 43 196 -90 0
execute if score %map game matches 1 run tp @a[tag=!skywars,tag=!winner,tag=!out] 711 43 196 90 0
gamemode survival @a[tag=skywars]
effect give @a[tag=skywars] resistance 3 255 true
scoreboard players set %second game 999
schedule function lobster:skywars_start_timer 3s
function rep:reset
scoreboard players set rep.recording config 1