scoreboard players set @s armor_level 2
item replace entity @s armor.legs with minecraft:chainmail_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1},tooltip_display={hidden_components:["enchantments"]}]
item replace entity @s armor.feet with minecraft:chainmail_boots[unbreakable={},enchantments={"minecraft:binding_curse":1},tooltip_display={hidden_components:["enchantments"]}]
tellraw @s "Successfully upgraded to chainmail armor."