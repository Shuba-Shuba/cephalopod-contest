scoreboard players add %end rotation 1
scoreboard players operation %end rotation %= 16 calc
execute if score %end rotation matches 0 run swing @e[type=mannequin,tag=end_screen] mainhand
execute if score %end rotation matches 8 run swing @e[type=mannequin,tag=end_screen] offhand
execute in cc:void as @a[tag=!out,predicate=!cc:is_riding_camera] run ride @s mount @e[type=item_display,tag=camera,limit=1]