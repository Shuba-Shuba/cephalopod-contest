# camera movement
#tp @a[tag=!out] 0 80 0
execute if score %camera1 game matches 0 run summon item_display 0 80 0 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 180)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Uno"
execute if score %camera1 game matches 0..60 run title @a[tag=!out] subtitle "Just like the card game"
execute if score %camera1 game matches 61..120 run title @a[tag=!out] subtitle ["Press [",{"keybind":"key.drop"},"] to play/draw a card"]
execute if score %camera1 game matches 121..180 run title @a[tag=!out] subtitle "First player to play all cards wins"