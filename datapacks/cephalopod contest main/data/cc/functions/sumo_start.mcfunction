tellraw @a ["Current match: ",{"selector":"@a[tag=sumo]","separator":" vs "},"\nOn deck: ",{"selector":"@a[tag=on_deck]"}]
execute if score %map game matches 0 run tp @a[tag=sumo] -215 116 1034
execute if score %map game matches 1 run tp @a[tag=sumo] -215 116 1152
execute if score sumo_hazards.enabled config matches ..-1 run scoreboard players set sumo_hazards.enabled config 0
execute if score sumo_hazards.enabled config matches 2.. run scoreboard players set sumo_hazards.enabled config 1
execute if score %map game matches 2 unless score sumo_hazards.enabled config matches 1 run place template cc:sumo2_normal -222 112 1263
execute if score %map game matches 2 if score sumo_hazards.enabled config matches 1 run place template cc:sumo2_hazards -222 112 1263
execute if score %map game matches 2 run tp @a[tag=sumo] -215 116 1270
execute if score %map game matches 0 run tp @a[tag=!sumo,tag=!out] -215 119 1055 180 0
execute if score %map game matches 1 run tp @a[tag=!sumo,tag=!out] -215 119 1131 180 0
execute if score %map game matches 2 run tp @a[tag=!sumo,tag=!out] -215 119 1291 180 0
effect give @a[tag=sumo] weakness 3 255 true
scoreboard players set %second game 999
schedule function cc:sumo_start_timer 3s
function rep:reset
scoreboard players set rep.recording config 1
gamemode adventure @a[tag=sumo]