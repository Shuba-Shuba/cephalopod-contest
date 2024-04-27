scoreboard players set @s armor_level 2
item replace entity @s armor.legs with minecraft:chainmail_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s armor.feet with minecraft:chainmail_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
tellraw @s "Successfully upgraded to chainmail armor."