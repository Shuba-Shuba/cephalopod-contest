scoreboard players add %end rotation 1
scoreboard players operation %end rotation %= 16 calc
execute if score %end rotation matches 0 run swing @e[type=mannequin,tag=end_screen] mainhand
execute if score %end rotation matches 4 as @e[type=mannequin,tag=end_screen] run data modify entity @s pose set value "crouching"
execute if score %end rotation matches 8 run swing @e[type=mannequin,tag=end_screen] offhand
# mannequin bug makes them move downwards with certain pose changes, workaround by teleporting back to previous position
execute if score %end rotation matches 12 as @e[type=mannequin,tag=end_screen] run data modify entity @s pose set value "standing"
execute if score %end rotation matches 12 as @e[type=mannequin,tag=end_screen] at @s run tp @n[type=marker,tag=end_screen_mannequin_bug_workaround]
execute in cc:void as @a[tag=!out,predicate=!cc:is_riding_camera] run ride @s mount @e[type=item_display,tag=camera,limit=1]