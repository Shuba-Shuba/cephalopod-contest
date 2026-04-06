# prepare the player for kit

clear @s
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 35
attribute @s minecraft:max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Successfully selected kit."

# give the player the kit contents

give @s cooked_beef 16