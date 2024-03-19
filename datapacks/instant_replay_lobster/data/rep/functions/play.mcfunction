execute if score rep.recording config matches 1 run scoreboard players operation @a anchor_index = rep.replay_length config
scoreboard players set rep.recording config 0

execute as @a[scores={anchor_index=1..},tag=!out] at @s run function rep:start

execute if score %replay_match game matches 1.. run scoreboard players set %replay game 1

say play