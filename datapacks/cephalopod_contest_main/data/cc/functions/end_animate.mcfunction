scoreboard players add %end rotation 1
scoreboard players operation %end2 rotation = %end rotation
scoreboard players operation %end2 rotation *= integers.-1 calc
execute as @e[type=minecraft:armor_stand,tag=end_screen] store result entity @s Pose.RightArm[0] float 25 run scoreboard players get %end rotation
execute as @e[type=minecraft:armor_stand,tag=end_screen] store result entity @s Pose.LeftArm[0] float 25 run scoreboard players get %end2 rotation
#execute in cc:void run tp @a[tag=!out] -3 201 3
execute in cc:void as @a[tag=!out,predicate=!cc:is_riding_camera] run ride @s mount @e[type=armor_stand,tag=camera,limit=1]