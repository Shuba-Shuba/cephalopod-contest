# camera movement
#execute if score %map game matches 0 if score %camera1 game matches 0..50 run tp @a[tag=!out] -238.0 100 687.0
#execute if score %map game matches 0 if score %camera1 game matches 51..100 run tp @a[tag=!out] -260 108 695
#execute if score %map game matches 0 if score %camera1 game matches 101..150 run tp @a[tag=!out] -238.0 91 707.0
#execute if score %map game matches 0 if score %camera1 game matches 151..200 run tp @a[tag=!out] -203 95 685
#execute if score %map game matches 0 if score %camera1 game matches 201..250 run tp @a[tag=!out] -232 91 717
#execute if score %map game matches 0 if score %camera1 game matches 251..300 run tp @a[tag=!out] -240.0 53 694.0
#execute if score %map game matches 1 if score %camera1 game matches 0..60 run tp @a[tag=!out] -683.0 111 711.0
#execute if score %map game matches 1 if score %camera1 game matches 61..120 run tp @a[tag=!out] -682 111 762
#execute if score %map game matches 1 if score %camera1 game matches 121..180 run tp @a[tag=!out] -656 113 762
#execute if score %map game matches 1 if score %camera1 game matches 181..240 run tp @a[tag=!out] -658.0 112 825.0
#execute if score %map game matches 1 if score %camera1 game matches 241..300 run tp @a[tag=!out] -610 118 795
execute if score %map game matches 0 if score %camera1 game matches 0 run summon item_display -238.0 100 687.0 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 58 run function lobster:camera_move {duration:0,to:"-260 108 695"}
execute if score %map game matches 0 if score %camera1 game matches 117 run function lobster:camera_move {duration:0,to:"-238.0 91 707.0"}
execute if score %map game matches 0 if score %camera1 game matches 175 run function lobster:camera_move {duration:0,to:"-203 95 685"}
execute if score %map game matches 0 if score %camera1 game matches 233 run function lobster:camera_move {duration:0,to:"-232 91 717"}
execute if score %map game matches 0 if score %camera1 game matches 292 run function lobster:camera_move {duration:0,to:"-240.0 53 694.0"}
#execute if score %map game matches 1 if score %camera1 game matches 0 run summon armor_stand -683.0 111 711.0 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
#execute if score %map game matches 1 if score %camera1 game matches 70 run tp @e[type=armor_stand,tag=camera,limit=1] -682 111 762
#execute if score %map game matches 1 if score %camera1 game matches 140 run tp @e[type=armor_stand,tag=camera,limit=1] -656 113 762
#execute if score %map game matches 1 if score %camera1 game matches 210 run tp @e[type=armor_stand,tag=camera,limit=1] -658.0 112 825.0
#execute if score %map game matches 1 if score %camera1 game matches 280 run tp @e[type=armor_stand,tag=camera,limit=1] -610 118 795
execute if score %map game matches 1 if score %camera1 game matches 0 run summon item_display -956 114 633 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# titles (ends at 350)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 100 0
title @a[tag=!out] title "Nun Run"
execute if score %camera1 game matches 0..70 run title @a[tag=!out] subtitle "1 person is the nun and everyone else runs"
execute if score %camera1 game matches 71..140 run title @a[tag=!out] subtitle ["You have ",{"score":{"name":"time.nun_run","objective":"config"}}," seconds to get ",{"score":{"name":"#win","objective":"prayers"}}," prayers"]
execute if score %camera1 game matches 141..210 run title @a[tag=!out] subtitle ["Runners pray by spamming [",{"keybind":"key.sneak"},"] on froglights"]
execute if score %camera1 game matches 211..280 run title @a[tag=!out] subtitle "If you die, the nun gets your prayers and you lose"
execute if score %camera1 game matches 281..350 run title @a[tag=!out] subtitle "The nun chooses a special ability and gets a sword"