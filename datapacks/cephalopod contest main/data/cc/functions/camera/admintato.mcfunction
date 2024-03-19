# camera movement
#tp @a[tag=!out] -228 102 834
execute if score %camera1 game matches 0 run summon item_display -228 102 834 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 200)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Admintato"
execute if score %camera1 game matches 0..50 run title @a[tag=!out] subtitle "Get to the other side for the admintato"
execute if score %camera1 game matches 51..100 run title @a[tag=!out] subtitle "Someone is the hunter biden and can't lose"
execute if score %camera1 game matches 101..150 run title @a[tag=!out] subtitle "They will shoot you on sight"
execute if score %camera1 game matches 151..200 run title @a[tag=!out] subtitle "Get back w/ the admintato to win"