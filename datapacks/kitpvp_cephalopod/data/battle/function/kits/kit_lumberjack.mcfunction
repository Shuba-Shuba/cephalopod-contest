# prepare the player for kit
scoreboard players set @s Kit_ID 4
attribute @s minecraft:generic.max_health base set 18
tellraw @s "Now Using: Kit Lumberjack"

# give the player the kit contents
give @s minecraft:wooden_axe[enchantments={sharpness:1}]
item replace entity @s weapon.offhand with minecraft:apple 64
damage @s 1
advancement revoke @s only battle:lumberjack