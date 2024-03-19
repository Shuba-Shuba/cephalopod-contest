# prepare the player for kit
scoreboard players set @s Kit_ID 21
tellraw @s "Now Using: Gunslinger"

# give the player the kit contents
item replace entity @s armor.head with leather_helmet{Unbreakable:1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b}
function shb:give/minigun
give @s cooked_beef 64