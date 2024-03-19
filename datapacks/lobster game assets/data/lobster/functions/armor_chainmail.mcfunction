scoreboard players set @s armor_level 2
item replace entity @s armor.legs with chainmail_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s armor.feet with chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
tellraw @s "Successfully upgraded to chainmail armor."