# ~ ~ ~  = box containing armor, hotbar, and offhand items
# ~ ~ ~1 = box containing back of inventory items

# get armor
item replace entity @s armor.head from block ~ ~ ~ container.0
item replace entity @s armor.chest from block ~ ~ ~ container.1
item replace entity @s armor.legs from block ~ ~ ~ container.2
item replace entity @s armor.feet from block ~ ~ ~ container.3

# get hotbar
item replace entity @s hotbar.0 from block ~ ~ ~ container.9
item replace entity @s hotbar.1 from block ~ ~ ~ container.10
item replace entity @s hotbar.2 from block ~ ~ ~ container.11
item replace entity @s hotbar.3 from block ~ ~ ~ container.12
item replace entity @s hotbar.4 from block ~ ~ ~ container.13
item replace entity @s hotbar.5 from block ~ ~ ~ container.14
item replace entity @s hotbar.6 from block ~ ~ ~ container.15
item replace entity @s hotbar.7 from block ~ ~ ~ container.16
item replace entity @s hotbar.8 from block ~ ~ ~ container.17

# get offhand
item replace entity @s weapon.offhand from block ~ ~ ~ container.18

# get back of inventory (no fixed slots)
loot give @s mine ~ ~ ~1 air{drop_contents:true}