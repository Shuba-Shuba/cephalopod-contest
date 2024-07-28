# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 9
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Successfully selected kit."

# give the player the kit contents

execute at @s run summon item ~ ~ ~ {Item:{id:"splash_potion",count:32,components:{"minecraft:potion_contents":{potion:"strong_healing"}}}}
execute at @s run summon item ~ ~ ~ {Item:{id:"potion",count:2,components:{"minecraft:potion_contents":{potion:"strength"}}}}
execute at @s run summon item ~ ~ ~ {Item:{id:"potion",count:2,components:{"minecraft:potion_contents":{potion:"swiftness"}}}}
give @s minecraft:diamond_sword[enchantments={sharpness:2,fire_aspect:3,unbreaking:3}]
item replace entity @s armor.head with minecraft:diamond_helmet[enchantments={protection:2,unbreaking:3}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[enchantments={protection:2,unbreaking:3}]
item replace entity @s armor.legs with minecraft:diamond_leggings[enchantments={protection:2,unbreaking:3}]
item replace entity @s armor.feet with minecraft:diamond_boots[enchantments={protection:2,unbreaking:3}]
item replace entity @s weapon.offhand with minecraft:cooked_beef 64