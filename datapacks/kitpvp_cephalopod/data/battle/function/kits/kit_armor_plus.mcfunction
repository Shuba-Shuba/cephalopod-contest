# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 6
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Now Using: Kit Armor+"

# give the player the kit contents

item replace entity @s weapon.offhand with minecraft:cooked_beef 8
give @s minecraft:wooden_shovel[unbreakable={},attribute_modifiers=[{operation:"add_value",type:"generic.attack_damage",amount:2,slot:"mainhand",id:"melee"}]] 1
item replace entity @s armor.head with minecraft:diamond_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:diamond_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:diamond_boots[unbreakable={}]