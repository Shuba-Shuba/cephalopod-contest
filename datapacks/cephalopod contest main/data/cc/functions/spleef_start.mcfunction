tellraw @a ["Current match: ",{"selector":"@a[tag=sumo]","separator":" vs "},"\nOn deck: ",{"selector":"@a[tag=on_deck]"}]
execute if score %map game matches 0 run place template minecraft:spleef -266 113 934
execute if score %map game matches 0 run tp @a[tag=sumo] -241 114 959
effect give @a[tag=sumo] weakness infinite 255 true
clear @a[tag=sumo]
scoreboard players set %second game 999
schedule function cc:spleef_start_timer 3s