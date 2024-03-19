# camera movement
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display -100 69 -100 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
function lobster:gametick/disco

# titles (ends at 240)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Disco Party"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "The walls become a certain color"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Stand a block with the same color"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Other color blocks disappear"
execute if score %camera1 game matches 181..240 run title @a[tag=!out] subtitle "You lose if you fall"