scoreboard players set @s armor_level 4
item replace entity @s armor.legs with minecraft:diamond_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1},tooltip_display={hidden_components:["enchantments"]}]
item replace entity @s armor.feet with minecraft:diamond_boots[unbreakable={},enchantments={"minecraft:binding_curse":1},tooltip_display={hidden_components:["enchantments"]}]
tellraw @s "Successfully upgraded to diamond armor."