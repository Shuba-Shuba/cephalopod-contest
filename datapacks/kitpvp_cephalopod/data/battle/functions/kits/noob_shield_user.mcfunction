# prepare the player for kit
scoreboard players set @s Kit_ID 12
tellraw @s "Now Using: Noob Shield User"

# give the player the kit contents
item replace entity @s armor.head with iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b}
item replace entity @s weapon.offhand with shield
give @s minecraft:cooked_beef 64
give @s minecraft:stone_sword
advancement revoke @s only battle:shield