# camera movement
#tp @a[tag=!out] 232 136 1079
execute if score %camera1 game matches 0 run summon item_display 232 136 1079 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 200)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Quick Craft"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "Get all 3 items, and hand them to the cashiers win"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle "Shelves get randomized when you mine blocks"
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "Furnaces/crafting tables are in the back"