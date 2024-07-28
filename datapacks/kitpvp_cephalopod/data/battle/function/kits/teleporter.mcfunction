# prepare the player for kit
scoreboard players set @s Kit_ID 32
tellraw @s "Now Using: Teleporter"

# give the player the kit contents
give @s minecraft:wooden_shovel[unbreakable={},enchantments={"minecraft:knockback":2,"minecraft:fire_aspect":1}]
give @s minecraft:book[custom_name='{"text":"Teleport To Random Player","italic":false}',custom_data={nbk:1b}]
give @s cooked_beef 64
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={}]

scoreboard players set @s offhand_carrot 1