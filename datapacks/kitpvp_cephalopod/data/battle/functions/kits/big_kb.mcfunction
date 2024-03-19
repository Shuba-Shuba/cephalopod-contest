# prepare the player for kit
scoreboard players set @s Kit_ID 37
attribute @s minecraft:generic.max_health base set 24
tellraw @s "Now Using: Big Knockback"

# give the player the kit contents
give @s stick{Enchantments:[{id:"knockback",lvl:3},{id:"fire_aspect",lvl:3}]}
give @s bow{Unbreakable:1b,Enchantments:[{id:"punch",lvl:2}]}
give @s arrow
give @s cooked_chicken 64
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
scoreboard players set @s max_arrow_time 60
scoreboard players set @s max_arrows 4