scoreboard players set @s armor_level 4
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s armor.feet with diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
tellraw @s "Successfully upgraded to diamond armor."