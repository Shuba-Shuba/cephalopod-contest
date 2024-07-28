# camera movement
#tp @a[tag=!out] 175 89 106
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display 175 89 106 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}


# titles (ends at 200)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Sussy Buttons"
execute if score %camera1 game matches 0..50 run title @a[tag=!out] subtitle ["On your turn, you will have ",{"score":{"name":"time.buttons","objective":"config"}}," seconds to press a button"]
execute if score %camera1 game matches 51..100 run title @a[tag=!out] subtitle "4 buttons are safe, but 1 will explode"
execute if score %camera1 game matches 101..150 run title @a[tag=!out] subtitle "To end the round, 2 things must happen:"
execute if score %camera1 game matches 151..200 run title @a[tag=!out] subtitle "1: Everybody pressed a button & 2: Someone died"