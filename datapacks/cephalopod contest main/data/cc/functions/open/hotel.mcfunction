scoreboard players set .hotel heist 0
execute in cc:void run data merge block 219 123 770 {Text4:'"NOT STARTED"'}
execute in cc:void run fill 221 122 772 221 124 769 minecraft:bone_block[axis=y]
execute in cc:void run fill 221 122 771 221 124 770 minecraft:air
execute in cc:void run playsound minecraft:block.piston.extend master @a 220.0 122 770.0 1 0.75
execute in cc:void run fill 158 125 770 158 127 767 minecraft:polished_basalt[axis=y]
execute in cc:void run fill 158 125 769 158 127 768 minecraft:bone_block[axis=y]
execute in cc:void run fill 192 133 770 192 135 767 minecraft:polished_basalt[axis=y]
execute in cc:void run fill 192 133 769 192 135 768 minecraft:bone_block[axis=y]
tag @a remove heist_hotel
kill @e[type=#cc:heist,tag=heist_hotel]
execute as @e[type=marker,tag=heist_melee,tag=heist_hotel] at @s run function cc:enemy_melee
execute as @e[type=marker,tag=heist_ranged,tag=heist_hotel] at @s run function cc:enemy_ranged
execute as @e[type=marker,tag=heist_dog,tag=heist_hotel] at @s run function cc:enemy_dog