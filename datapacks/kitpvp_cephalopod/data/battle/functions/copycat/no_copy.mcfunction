#execute store result score @s steak_count run clear @s cooked_beef 0
#execute store result score @s arrow_count run clear @s arrow 0
#clear @s
#execute if score @s arrow_count matches 1 run item replace entity @s hotbar.3 with arrow 1
#execute if score @s arrow_count matches 2 run item replace entity @s hotbar.3 with arrow 2
#execute if score @s arrow_count matches 3 run item replace entity @s hotbar.3 with arrow 3
#execute if score @s arrow_count matches 4 run item replace entity @s hotbar.3 with arrow 4
#execute if score @s arrow_count matches 5 run item replace entity @s hotbar.3 with arrow 5
#execute if score @s arrow_count matches 6 run item replace entity @s hotbar.3 with arrow 6
#execute if score @s arrow_count matches 7 run item replace entity @s hotbar.3 with arrow 7
#execute if score @s arrow_count matches 8 run item replace entity @s hotbar.3 with arrow 8
#execute if score @s arrow_count matches 9.. run item replace entity @s hotbar.3 with arrow 9
#execute if score @s steak_count matches 1 run item replace entity @s hotbar.1 with cooked_beef 1
#execute if score @s steak_count matches 2 run item replace entity @s hotbar.1 with cooked_beef 2
#execute if score @s steak_count matches 3 run item replace entity @s hotbar.1 with cooked_beef 3
#execute if score @s steak_count matches 4 run item replace entity @s hotbar.1 with cooked_beef 4
#execute if score @s steak_count matches 5 run item replace entity @s hotbar.1 with cooked_beef 5
#execute if score @s steak_count matches 6.. run item replace entity @s hotbar.1 with cooked_beef 6
#item replace entity @s hotbar.2 with minecraft:bow[unbreakable={}]

# clear all items that can be in other kits to prevent players from keeping them
clear @s #battle:in_kits

title @s actionbar "Nobody to copy item from"
item replace entity @s hotbar.0 with minecraft:barrier[custom_name='{"text":"Copycat Slot","italic":false,"color":"red"}',lore=['{"text":"This slot will copy the item the nearest","color":"gray"}','{"text":"player within 8 blocks is holding.","color":"gray"}','""','{"text":"This will usually be a melee weapon.","color":"gray"}']]