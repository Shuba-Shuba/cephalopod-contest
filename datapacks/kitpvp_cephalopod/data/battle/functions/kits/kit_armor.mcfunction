# prepare the player for kit
scoreboard players set @s Kit_ID 5
attribute @s minecraft:generic.max_health base set 20
tellraw @s "Now Using: Kit Armor"

# give the player the kit contents
give @s stick{Enchantments:[{id:"knockback",lvl:1}]}
give @s wooden_sword{Unbreakable:1b}
item replace entity @s weapon.offhand with cooked_beef 64
item replace entity @s armor.head with iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:iron_boots{Unbreakable:1b}