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

execute at @s run summon item ~ ~ ~ {Item:{id:"splash_potion",Count:32,tag:{Potion:"strong_healing"}}}
execute at @s run summon item ~ ~ ~ {Item:{id:"potion",Count:2,tag:{Potion:"strength"}}}
execute at @s run summon item ~ ~ ~ {Item:{id:"potion",Count:2,tag:{Potion:"swiftness"}}}
give @s diamond_sword{Enchantments:[{id:"sharpness",lvl:2},{id:"fire_aspect",lvl:3},{id:"unbreaking",lvl:3}]}
item replace entity @s armor.head with diamond_helmet{Enchantments:[{id:"protection",lvl:2},{id:"unbreaking",lvl:3}]}
item replace entity @s armor.chest with diamond_chestplate{Enchantments:[{id:"protection",lvl:2},{id:"unbreaking",lvl:3}]}
item replace entity @s armor.legs with diamond_leggings{Enchantments:[{id:"protection",lvl:2},{id:"unbreaking",lvl:3}]}
item replace entity @s armor.feet with diamond_boots{Enchantments:[{id:"protection",lvl:2},{id:"unbreaking",lvl:3}]}
item replace entity @s weapon.offhand with minecraft:cooked_beef 64