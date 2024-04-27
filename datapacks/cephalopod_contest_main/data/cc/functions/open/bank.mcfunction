scoreboard players set .bank heist 0
execute in cc:void run data merge block 239 123 790 {Text4:'"NOT STARTED"'}
execute in cc:void run fill 241 124 791 241 122 788 minecraft:bone_block[axis=y]
execute in cc:void run fill 241 122 790 241 124 789 minecraft:air
execute in cc:void run playsound minecraft:block.piston.extend master @a 240 122 790 1 0.75
tag @a remove heist_bank
kill @e[type=#cc:heist,tag=heist_bank]
execute as @e[type=marker,tag=heist_melee,tag=heist_bank] at @s run function cc:enemy_melee
execute as @e[type=marker,tag=heist_ranged,tag=heist_bank] at @s run function cc:enemy_ranged
execute as @e[type=marker,tag=heist_dog,tag=heist_bank] at @s run function cc:enemy_dog