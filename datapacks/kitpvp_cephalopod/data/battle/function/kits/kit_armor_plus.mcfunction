# prepare the player for kit

clear @s
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 6
attribute @s minecraft:max_health base set 20
effect give @s minecraft:saturation 80 255 true
tellraw @s "Now Using: Kit Armor+"

# give the player the kit contents

item replace entity @s weapon.offhand with minecraft:cooked_beef 8
give @s minecraft:wooden_shovel[unbreakable={},attribute_modifiers=[{operation:"add_value",type:"attack_damage",amount:2,slot:"mainhand",id:"melee"}]] 1
item replace entity @s armor.head with minecraft:diamond_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:diamond_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:diamond_boots[unbreakable={}]