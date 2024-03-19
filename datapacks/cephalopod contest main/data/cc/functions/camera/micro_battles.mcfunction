# camera movement
#execute if score %map game matches 0 run tp @a[tag=!out] 279 10 -821
execute if score %map game matches 0 if score %camera1 game matches 0 run summon minecraft:item_display 279 10 -821 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute if score %map game matches 0 if score %camera1 game matches 0 run forceload add 250 -850 310 -790
execute if score %map game matches 0 if score %camera1 game matches 0 run fill 250 -15 -850 308 47 -791 air
execute if score %map game matches 0 if score %camera1 game matches 0 run place template cc:microbattles0 250 0 -850
execute if score %map game matches 0 if score %camera1 game matches 0 as @e[type=marker,tag=micro_lava] at @s run fill ^1 ^-2 ^ ^-1 ^-1 ^ structure_void

# titles (ends at 240)
scoreboard players add %camera1 game 1
title @a[tag=!out] times 0 9 0
title @a[tag=!out] title "Micro Battles"
execute if score %camera1 game matches 0..80 run title @a[tag=!out] subtitle "4 teams, kill other teams, use tools/blocks"
execute if score %camera1 game matches 81..160 run title @a[tag=!out] subtitle "Last team standing wins, including dead teammates"
execute if score %camera1 game matches 161..240 run title @a[tag=!out] subtitle "Watch out - the map shrinks over time"