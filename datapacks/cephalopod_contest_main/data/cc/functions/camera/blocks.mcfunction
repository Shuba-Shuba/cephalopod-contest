# camera movement
#tp @a[tag=!out] 214 153 1054
execute if score %camera1 game matches 0 run summon item_display 214 153 1054 {view_range:0.0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %camera1 game matches 0 run fill 211 153 1055 211 155 1053 air
execute if score %camera1 game matches 0 run clone 200 164 1026 208 172 1026 210 152 1045
execute if score %camera1 game matches 20 run clone 200 164 1025 200 164 1025 211 153 1055
execute if score %camera1 game matches 40 run clone 200 164 1024 200 164 1024 211 153 1054
execute if score %camera1 game matches 60 run clone 200 164 1023 200 164 1023 211 153 1053
execute if score %camera1 game matches 80 run clone 200 165 1023 200 165 1023 211 154 1053
execute if score %camera1 game matches 100 run clone 200 165 1024 200 165 1024 211 154 1054
execute if score %camera1 game matches 120 run clone 200 165 1025 200 165 1025 211 154 1055
execute if score %camera1 game matches 140 run clone 200 166 1025 200 166 1025 211 155 1055
execute if score %camera1 game matches 160 run clone 200 166 1024 200 166 1024 211 155 1054
execute if score %camera1 game matches 180 run clone 200 166 1023 200 166 1023 211 155 1053

# titles (ends at 200)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Quick Blocks"
execute if score %camera1 game matches 0..66 run title @a[tag=!out] subtitle "Look at the pattern on the big board"
execute if score %camera1 game matches 67..133 run title @a[tag=!out] subtitle "Copy the pattern to the small board"
execute if score %camera1 game matches 134..200 run title @a[tag=!out] subtitle "If you make a mistake, you will die"