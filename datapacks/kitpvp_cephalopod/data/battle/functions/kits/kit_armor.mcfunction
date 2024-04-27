# prepare the player for kit
scoreboard players set @s Kit_ID 5
attribute @s minecraft:generic.max_health base set 20
tellraw @s "Now Using: Kit Armor"

# give the player the kit contents
give @s minecraft:stick[enchantments={knockback:1}]
give @s minecraft:wooden_sword[unbreakable={}]
item replace entity @s weapon.offhand with cooked_beef 64
item replace entity @s armor.head with minecraft:iron_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:iron_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:iron_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:iron_boots[unbreakable={}]