# prepare the player for kit
scoreboard players set @s Kit_ID 21
tellraw @s "Now Using: Gunslinger"

# give the player the kit contents
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:iron_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:iron_boots[unbreakable={}]
function shb:give/minigun
give @s cooked_beef 64