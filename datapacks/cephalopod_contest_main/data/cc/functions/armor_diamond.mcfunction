scoreboard players set @s armor_level 4
item replace entity @s armor.legs with minecraft:diamond_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s armor.feet with minecraft:diamond_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
tellraw @s "Successfully upgraded to diamond armor."