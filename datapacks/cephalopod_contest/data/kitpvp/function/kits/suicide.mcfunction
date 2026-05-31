# prepare the player for kit

clear @s
effect clear @s
scoreboard players set @s Kit_ID 29
attribute @s minecraft:max_health base set 6
effect give @s minecraft:saturation 80 255 true
tellraw @s "Now Using: Suicide Bomber"

# give the player the kit contents

give @s minecraft:carrot_on_a_stick[item_model=tnt,item_name={text:"Self Destruct",italic:false}]
give @s minecraft:wooden_sword[damage=58]
effect give @s speed infinite 0 true
effect give @s minecraft:instant_damage 1 0
