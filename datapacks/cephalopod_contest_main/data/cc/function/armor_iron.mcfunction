scoreboard players set @s armor_level 3
item replace entity @s armor.legs with minecraft:iron_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s armor.feet with minecraft:iron_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
tellraw @s "Successfully upgraded to iron armor."