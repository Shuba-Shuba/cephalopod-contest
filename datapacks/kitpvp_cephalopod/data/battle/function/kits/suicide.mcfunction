# prepare the player for kit

clear @s
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 29
attribute @s minecraft:max_health base set 6
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Now Using: Suicide Bomber"

# give the player the kit contents

give @s minecraft:tnt[custom_name={text:"Self Destruct",italic:false},custom_data={nbk:1b}]
give @s minecraft:wooden_sword[damage=58]
effect give @s speed infinite 0 true
effect give @s minecraft:instant_damage 1 0

scoreboard players set @s offhand_carrot 1