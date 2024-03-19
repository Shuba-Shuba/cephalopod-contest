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

item replace entity @s armor.head with minecraft:diamond_helmet{Enchantments:[{id:"protection",lvl:5},{id:"fire_protection",lvl:5},{id:"projectile_protection",lvl:5},{id:"unbreaking",lvl:10},{id:"mending",lvl:1},{id:"aqua_affinity",lvl:1},{id:"respiration",lvl:10}]}
item replace entity @s armor.chest with minecraft:diamond_chestplate{Enchantments:[{id:"protection",lvl:5},{id:"fire_protection",lvl:5},{id:"projectile_protection",lvl:5},{id:"unbreaking",lvl:10},{id:"mending",lvl:1}]}
item replace entity @s armor.legs with minecraft:diamond_leggings{Enchantments:[{id:"protection",lvl:5},{id:"fire_protection",lvl:5},{id:"projectile_protection",lvl:5},{id:"unbreaking",lvl:10},{id:"mending",lvl:1}]}
item replace entity @s armor.feet with minecraft:diamond_boots{Enchantments:[{id:"protection",lvl:5},{id:"fire_protection",lvl:5},{id:"projectile_protection",lvl:5},{id:"unbreaking",lvl:10},{id:"mending",lvl:1},{id:"depth_strider",lvl:5}]}
give @s stick{Enchantments:[{id:"knockback",lvl:10}]}
give @s minecraft:diamond_sword{Enchantments:[{id:"sharpness",lvl:8},{id:"fire_aspect",lvl:32767},{id:"unbreaking",lvl:10},{id:"mending",lvl:1}]}
give @s minecraft:diamond_axe{Enchantments:[{id:"sharpness",lvl:8},{id:"fire_aspect",lvl:32767},{id:"unbreaking",lvl:10},{id:"mending",lvl:1}]}
give @s bow{Enchantments:[{id:"power",lvl:10},{id:"unbreaking",lvl:10},{id:"infinity",lvl:1},{id:"flame",lvl:1},{id:"mending",lvl:1}]}
give @s minecraft:enchanted_golden_apple 20
give @s arrow