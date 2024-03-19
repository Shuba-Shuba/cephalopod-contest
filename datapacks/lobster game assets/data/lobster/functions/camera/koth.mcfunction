# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 41 82 79
#execute if score %map game matches 1 run tp @a[tag=!out] 114 88 209
#execute if score %map game matches 2 run tp @a[tag=!out] -25 88 72
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 41 82 79 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 1 if score %camera1 game matches 0 run summon item_display 114 88 209 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 2 if score %camera1 game matches 0 run summon item_display -25 88 72 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 160)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "King Of The Hill"
execute if score %camera1 game matches 0..80 run title @a[tag=!out] subtitle "Stay in the middle for points, and punch others"
execute if score %camera1 game matches 81..160 run title @a[tag=!out] subtitle ["Whoever has the least after ",{"score":{"name":"time.koth","objective":"config"}}," seconds loses"]