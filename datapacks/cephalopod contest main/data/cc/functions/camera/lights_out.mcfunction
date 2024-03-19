# camera movement
#tp @a[tag=!out] 0 80 0
execute if score %camera1 game matches 0 run summon minecraft:item_display 0 80 0 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 160)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Lights Out"
execute if score %camera1 game matches 0..80 run title @a[tag=!out] subtitle "Players will all have the same random weapon"
execute if score %camera1 game matches 81..160 run title @a[tag=!out] subtitle ["Whoever survives after ",{"score":{"name":"time.lights_out","objective":"config"}}," seconds wins"]