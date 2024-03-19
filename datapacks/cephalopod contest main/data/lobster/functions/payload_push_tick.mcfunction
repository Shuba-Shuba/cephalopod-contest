# move forward
execute at @s if entity @e[type=marker,tag=rotate_payload,distance=..0.1] run data modify entity @s Rotation set from entity @e[type=marker,tag=rotate_payload,limit=1,sort=nearest] Rotation
execute at @s run tp ^ ^ ^0.0625
scoreboard players add .payload_progress game 1
execute store result bossbar lobster:time value run scoreboard players get .payload_progress game

# checkpoints
execute if score %map game matches 0 if score .payload_progress game matches 1000 run function lobster:payload_checkpoint
execute if score %map game matches 0 if score .payload_progress game matches 1930 run function lobster:payload_checkpoint
execute if score %map game matches 0 if score .payload_progress game matches 2725 run function lobster:payload_checkpoint
execute if score %map game matches 0 if score .payload_progress game matches 3740.. run function lobster:payload_cart_end

# loop
scoreboard players remove .payload_loop game 1
execute if score .payload_loop game matches 1.. run function lobster:payload_push_tick