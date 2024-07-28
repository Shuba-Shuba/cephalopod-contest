# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] -49 89 156
#execute if score %map game matches 1 run tp @a[tag=!out] 6 93 238
#execute if score %map game matches 2 run tp @a[tag=!out] 2 93 286
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display -49 89 156 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display 6 93 238 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 2 run summon minecraft:item_display 2 93 286 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Glass Jumps"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle ["You will have ",{"score":{"name":"time.glass_jumps","objective":"config"}}," seconds to get to the other side"]
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Each jump has 2 sides, but only 1 is safe"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Watch out! Players can punch each other"