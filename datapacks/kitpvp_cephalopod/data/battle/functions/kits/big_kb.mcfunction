# prepare the player for kit
scoreboard players set @s Kit_ID 37
attribute @s minecraft:generic.max_health base set 24
tellraw @s "Now Using: Big Knockback"

# give the player the kit contents
give @s minecraft:stick[enchantments={knockback:3,fire_aspect:3}]
give @s minecraft:bow[unbreakable={},enchantments={punch:2}]
give @s arrow
give @s cooked_chicken 64
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
scoreboard players set @s max_arrow_time 60
scoreboard players set @s max_arrows 4