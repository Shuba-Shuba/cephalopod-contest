# prepare the player for kit
scoreboard players set @s Kit_ID 25
tellraw @s "Now Using: Copycat"

# give the player the kit contents
give @s minecraft:barrier[custom_name='{"text":"Copycat Slot","italic":false,"color":"red"}',lore=['{"text":"This slot will copy the item the nearest","color":"gray"}','{"text":"player within 8 blocks is holding.","color":"gray"}','""','{"text":"This will usually be a melee weapon.","color":"gray"}']]
give @s cooked_beef 6
give @s minecraft:bow[unbreakable={}]
give @s arrow 3
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @s armor.feet with minecraft:diamond_boots[unbreakable={}]

scoreboard players set @s offhand_carrot 1