# prepare the player for kit
scoreboard players set @s Kit_ID 25
tellraw @s "Now Using: Copycat"

# give the player the kit contents
give @s barrier{display:{Name:'{"text":"Copycat Slot","italic":false,"color":"red"}',Lore:['{"text":"This slot will copy the item the nearest","color":"gray"}','{"text":"player within 8 blocks is holding.","color":"gray"}','""','{"text":"This will usually be a melee weapon.","color":"gray"}']}}
give @s cooked_beef 6
give @s bow{Unbreakable:1b}
give @s arrow 3
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.feet with diamond_boots{Unbreakable:1b}

scoreboard players set @s offhand_carrot 1