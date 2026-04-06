# prepare the player for kit

clear @s
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 28
attribute @s minecraft:max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Successfully selected kit."

# give the player the kit contents

give @s minecraft:soul_lantern[custom_name='{"text":"Sabotage Lights","color":"red","italic":false}',lore=['{"text":"Inflicts blindness on other kits","color":"gray"}'],custom_data={SabotageID:1}]