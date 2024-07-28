# camera movement
#execute in cc:chunk run tp @a[tag=!out] 6 -43 26
execute if score %camera1 game matches 0 run summon minecraft:item_display 6 -43 26 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
execute if score %map game matches 0 run title @a[tag=!out] title "dylan joke but its shuba"
execute if score %map game matches 1 run title @a[tag=!out] title "Chunky Chunkle Chunkus"
execute if score %map game matches 2 run title @a[tag=!out] title "i forgot the name of it"
execute if score %map game matches 3 run title @a[tag=!out] title "its the chunk one"
execute if score %map game matches 4 run title @a[tag=!out] title "that one game with chunks"
execute if score %camera1 game matches 0..120 run title @a[tag=!out] subtitle "Everyone will spawn in a copy of the same chunk"
execute if score %camera1 game matches 121..150 run title @a[tag=!out] subtitle ["You have ",{"score":{"name":"time.chunk","objective":"config"}}," seconds to collect resources"]
execute if score %camera1 game matches 151..180 run title @a[tag=!out] subtitle "After the timer, players will fight in an arena"