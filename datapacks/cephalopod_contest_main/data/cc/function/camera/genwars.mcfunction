# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 1000 -47 -250
execute if score %camera1 game matches 0 if score %map game matches 0 run summon minecraft:item_display 1000 -47 -250 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 if score %map game matches 1 run summon minecraft:item_display 1317 -16 -232 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Bed Wars"
execute if score %camera1 game matches 0..45 run title @a[tag=!out] subtitle "Players will be split into 4 teams"
execute if score %camera1 game matches 46..90 run title @a[tag=!out] subtitle "Get balls by rightclicking the ball sack"
execute if score %camera1 game matches 91..135 run title @a[tag=!out] subtitle "Last team standing wins, including dead teammates"
execute if score %camera1 game matches 136..180 run title @a[tag=!out] subtitle "THIS IS A PLACEHOLDER MAP"