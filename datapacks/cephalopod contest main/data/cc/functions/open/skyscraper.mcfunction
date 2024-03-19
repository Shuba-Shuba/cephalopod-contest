scoreboard players set .skyscraper heist 0
execute in cc:void run data merge block 271 123 771 {Text4:'"NOT STARTED"'}
execute in cc:void run fill 269 124 769 269 122 772 minecraft:bone_block[axis=y]
execute in cc:void run fill 269 124 770 269 122 771 minecraft:air
execute in cc:void run playsound minecraft:block.piston.extend master @a 269 122 771.0 1 0.75
execute in cc:void run fill 327 64 777 327 62 774 minecraft:polished_basalt[axis=y]
execute in cc:void run fill 327 64 776 327 62 775 minecraft:bone_block[axis=y]
tag @a remove heist_skyscraper
kill @e[type=#cc:heist,tag=heist_skyscraper]
execute as @e[type=marker,tag=heist_melee,tag=heist_skyscraper] at @s run function cc:enemy_melee
execute as @e[type=marker,tag=heist_ranged,tag=heist_skyscraper] at @s run function cc:enemy_ranged
execute as @e[type=marker,tag=heist_dog,tag=heist_skyscraper] at @s run function cc:enemy_dog