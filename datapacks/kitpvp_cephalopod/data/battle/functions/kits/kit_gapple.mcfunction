# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 8
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Successfully selected kit."

# give the player the kit contents

give @s minecraft:enchanted_golden_apple 64
give @s minecraft:diamond_sword[enchantments={sharpness:2,fire_aspect:3,unbreaking:3}]
give @s minecraft:diamond_helmet[enchantments={protection:2,unbreaking:3}]
give @s minecraft:diamond_chestplate[enchantments={protection:2,unbreaking:3}]
give @s minecraft:diamond_leggings[enchantments={protection:2,unbreaking:3}]
give @s minecraft:diamond_boots[enchantments={protection:2,unbreaking:3}]
give @s minecraft:potion[potion_contents={potion:"strength"}] 3
give @s minecraft:potion[potion_contents={potion:"swiftness"}] 3
item replace entity @s armor.head with minecraft:diamond_helmet[enchantments={protection:2,unbreaking:3}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[enchantments={protection:2,unbreaking:3}]
item replace entity @s armor.legs with minecraft:diamond_leggings[enchantments={protection:2,unbreaking:3}]
item replace entity @s armor.feet with minecraft:diamond_boots[enchantments={protection:2,unbreaking:3}]
tellraw @s {"text":"Notice: This kit has more than what is contained in the hotbar.","color":"aqua"}