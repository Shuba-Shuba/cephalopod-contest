# camera movement
#tp @a[tag=!out] 601 109 526
execute if score %camera1 game matches 0 run summon item_display 601 109 526 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}

# titles (ends at 200)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Improv Show"
execute if score %camera1 game matches 0..40 run title @a[tag=!out] subtitle "Each player will have a turn on stage"
execute if score %camera1 game matches 41..80 run title @a[tag=!out] subtitle "Player on stage gets tools + random items"
execute if score %camera1 game matches 81..120 run title @a[tag=!out] subtitle "They must improvise to entertain the audience"
execute if score %camera1 game matches 121..160 run title @a[tag=!out] subtitle "The audience rates each performance"
execute if score %camera1 game matches 161..200 run title @a[tag=!out] subtitle "Worst rated player gets eliminated"