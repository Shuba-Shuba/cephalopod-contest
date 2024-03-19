# prepare the player for kit
scoreboard players set @s Kit_ID 16
attribute @s minecraft:generic.max_health base set 40
effect give @s minecraft:instant_health 80 255 true
tellraw @s "Now Using: Kit PRO"

# give the player the kit contents
give @s wooden_hoe{Enchantments:[{id:"sharpness",lvl:3},{id:"knockback",lvl:1}]}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s weapon.offhand with minecraft:cooked_beef 64