# prepare the player for kit
scoreboard players set @s Kit_ID 12
tellraw @s "Now Using: Noob Shield User"

# give the player the kit contents
item replace entity @s armor.head with minecraft:iron_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:iron_boots[unbreakable={}]
item replace entity @s weapon.offhand with shield
give @s minecraft:cooked_beef 64
give @s minecraft:stone_sword
advancement revoke @s only battle:shield