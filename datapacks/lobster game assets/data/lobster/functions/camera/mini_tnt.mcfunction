# camera movement
#tp @a[tag=!out] 616 20 -584
execute if score %camera1 game matches 0 run summon minecraft:item_display 616 20 -584 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}

# fill map
execute if score %camera1 game matches 10 run function lobster:tnt_map

# check for class changes
execute if score tnt.force_class config matches -2 as @a[tag=!out,tag=!ded] if score @s mini_tnt_class matches -1..3 run function lobster:change_class

# titles (ends at 240)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 9 0
title @a[tag=!out] title "Mini TNT"
execute if score %camera1 game matches 0..90 run title @a[tag=!out] subtitle "It's spleef w/ TNT & other weapons"
execute if score %camera1 game matches 91..180 run title @a[tag=!out] subtitle "Arrows explode, and items have special abilities"
execute if score %camera1 game matches 181..240 run title @a[tag=!out] subtitle "Thank you ChainsawNinja for creating \"Duel TNT\""