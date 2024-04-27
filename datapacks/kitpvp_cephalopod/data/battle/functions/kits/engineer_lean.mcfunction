# prepare the player for kit
scoreboard players set @s Kit_ID 39
tellraw @s "Now Using: Tainted Engineer"

# give the player the kit contents
give @s minecraft:furnace[custom_name='[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Build Tainted Sentry"]',custom_data={nbk:1b}]
give @s minecraft:iron_pickaxe[unbreakable={}]
give @s cooked_beef 64
item replace entity @s armor.head with minecraft:netherite_helmet[unbreakable={}]

scoreboard players set @s offhand_carrot 1