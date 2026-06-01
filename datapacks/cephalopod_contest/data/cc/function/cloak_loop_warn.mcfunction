scoreboard players remove .r raycast 1
particle dust{scale:1f,color:[0f,1f,1f]} ~ ~ ~ 0 3 0 0 4 force @a
execute if score .r raycast matches 1.. positioned ^ ^ ^0.5 run function cc:cloak_loop_warn