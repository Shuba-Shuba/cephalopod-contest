# camera movement
#execute if score %map game matches 0 if score %camera1 game matches 0..120 run tp @a[tag=!out] 412 91 444
#execute if score %map game matches 0 if score %camera1 game matches 121..240 run tp @a[tag=!out] 365 93 475
execute if score %map game matches 0 if score %camera1 game matches 0 run summon minecraft:item_display 412 91 444 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 120 run function cc:camera_move {duration:0,to:"365 93 475"}

# titles (ends at 240)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Counter-Strike"
execute if score %camera1 game matches 0..90 run title @a[tag=!out] subtitle ["",{"text":"BLU","color":"aqua"}," team ",{"text":"plants","underlined":true}," the bomb and wins if it explodes"]
execute if score %camera1 game matches 91..180 run title @a[tag=!out] subtitle ["",{"text":"RED","color":"red"}," team ",{"text":"defuses","underlined":true}," the bomb before it explodes to win"]
execute if score %camera1 game matches 180..240 run title @a[tag=!out] subtitle "Buy weapons at spawn"