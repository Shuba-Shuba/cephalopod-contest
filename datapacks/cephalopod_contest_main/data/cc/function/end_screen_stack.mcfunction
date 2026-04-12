execute as @e[type=mannequin,tag=end_screen] at @s run tp @s ~ ~1 ~
summon mannequin 0 200 0 {Rotation:[45f,0f],Tags:["end_screen","init"],attributes:[{id:"scale",base:0.5d}],NoGravity:true}
data modify entity @n[type=mannequin,tag=init] profile.id set from entity @s UUID
tag @e[type=mannequin,tag=init] remove init