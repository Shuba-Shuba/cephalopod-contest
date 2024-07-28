# prepare the player for kit
scoreboard players set @s Kit_ID 31
tellraw @s "Now Using: Brick Thrower"

# give the player the kit contents
give @s minecraft:snowball[custom_name='{"text":"Throwable Brick","italic":false}',custom_data={brick:1b}] 16
give @s cooked_beef 64
item replace entity @s armor.chest with minecraft:iron_chestplate[unbreakable={}]
give @s minecraft:wooden_pickaxe[unbreakable={}]