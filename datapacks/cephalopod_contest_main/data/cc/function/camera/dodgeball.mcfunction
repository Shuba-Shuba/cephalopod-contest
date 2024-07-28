# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 292 105 153
#execute if score %map game matches 1 run tp @a[tag=!out] 484 120 -38
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 292 105 153 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %map game matches 1 if score %camera1 game matches 0 run summon item_display 484 120 -38 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Dodgeball"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "Throw balls to kill the other team"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Get balls by rightclicking the ball sack"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Last team standing wins, including dead teammates"