scoreboard players set @s armor_level 3
item replace entity @s armor.legs with minecraft:iron_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1},tooltip_display={hidden_components:["enchantments"]}]
item replace entity @s armor.feet with minecraft:iron_boots[unbreakable={},enchantments={"minecraft:binding_curse":1},tooltip_display={hidden_components:["enchantments"]}]
tellraw @s "Successfully upgraded to iron armor."