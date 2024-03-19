# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 117 100 -9
#execute if score %map game matches 1 run tp @a[tag=!out] 343 140 620
#execute if score %map game matches 2 run tp @a[tag=!out] 396 105 600
#execute if score %map game matches 3 run tp @a[tag=!out] 448 115 620
#execute if score %map game matches 4 run tp @a[tag=!out] -438 140 1045
#execute if score %map game matches 5 run tp @a[tag=!out] 582 102 611
#execute if score %map game matches 6 run tp @a[tag=!out] 639 107 613
#execute if score %map game matches 7 run tp @a[tag=!out] 714 150 617
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display 117 100 -9 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display 343 140 620 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 2 run summon minecraft:item_display 396 105 600 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 3 run summon minecraft:item_display 448 115 620 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 4 run summon minecraft:item_display -438 140 1045 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 5 run summon minecraft:item_display 582 102 611 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 6 run summon minecraft:item_display 639 107 613 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 7 run summon minecraft:item_display 714 150 617 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Kit PvP"
execute if score %camera1 game matches 0..50 run title @a[tag=!out] subtitle "Objective: Kill people"
execute if score %camera1 game matches 51..100 run title @a[tag=!out] subtitle "Respawn or kill = change kit"
execute if score %camera1 game matches 101..180 run title @a[tag=!out] subtitle ["Player w/ least kills after ",{"score":{"name":"time.kitpvp","objective":"config"}}," seconds loses"]