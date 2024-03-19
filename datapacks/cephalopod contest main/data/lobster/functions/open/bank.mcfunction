scoreboard players set .bank heist 0
execute in sp:void run data merge block 239 123 790 {Text4:'"NOT STARTED"'}
execute in sp:void run fill 241 124 791 241 122 788 minecraft:bone_block[axis=y]
execute in sp:void run fill 241 122 790 241 124 789 minecraft:air
execute in sp:void run playsound minecraft:block.piston.extend master @a 240 122 790 1 0.75
tag @a remove heist_bank
kill @e[type=#lobster:heist,tag=heist_bank]
execute as @e[type=marker,tag=heist_melee,tag=heist_bank] at @s run function lobster:enemy_melee
execute as @e[type=marker,tag=heist_ranged,tag=heist_bank] at @s run function lobster:enemy_ranged
execute as @e[type=marker,tag=heist_dog,tag=heist_bank] at @s run function lobster:enemy_dog