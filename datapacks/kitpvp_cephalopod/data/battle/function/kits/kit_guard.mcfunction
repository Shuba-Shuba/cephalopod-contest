# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 1
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Successfully selected kit."

# give the player the kit contents

item replace entity @s armor.head with minecraft:diamond_helmet[enchantments={protection:5,fire_protection:5,projectile_protection:5,unbreaking:10,mending:1,aqua_affinity:1,respiration:10}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[enchantments={protection:5,fire_protection:5,projectile_protection:5,unbreaking:10,mending:1}]
item replace entity @s armor.legs with minecraft:diamond_leggings[enchantments={protection:5,fire_protection:5,projectile_protection:5,unbreaking:10,mending:1}]
item replace entity @s armor.feet with minecraft:diamond_boots[enchantments={protection:5,fire_protection:5,projectile_protection:5,unbreaking:10,mending:1,depth_strider:5}]
give @s minecraft:stick[enchantments={knockback:10}]
give @s minecraft:diamond_sword[enchantments={sharpness:8,fire_aspect:255,unbreaking:10,mending:1}]
give @s minecraft:diamond_axe[enchantments={sharpness:8,fire_aspect:255,unbreaking:10,mending:1}]
give @s minecraft:bow[enchantments={power:10,unbreaking:10,infinity:1,flame:1,mending:1}]
give @s minecraft:enchanted_golden_apple 20
give @s arrow