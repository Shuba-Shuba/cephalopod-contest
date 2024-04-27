# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 133 109 333
#execute if score %map game matches 1 run tp @a[tag=!out] 132 109 452
#execute if score %map game matches 2 run tp @a[tag=!out] 223 109 453
#execute if score %map game matches 3 run tp @a[tag=!out] 223 109 332
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 133 109 333 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 1 if score %camera1 game matches 0 run summon item_display 132 109 452 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 2 if score %camera1 game matches 0 run summon item_display 223 109 453 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 3 if score %camera1 game matches 0 run summon item_display 223 109 332 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Sussy Rocks"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "The platforms are going to crumble one by one"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Stay on the platforms for 50 seconds to win"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Watch out! Players can punch each other"