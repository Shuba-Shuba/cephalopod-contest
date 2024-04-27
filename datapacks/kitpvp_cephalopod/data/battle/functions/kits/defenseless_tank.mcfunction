# prepare the player for kit
scoreboard players set @s Kit_ID 14
tellraw @s "Now Using: Defenseless Tank"

# give the player the kit contents
give @s minecraft:golden_apple[custom_name='"Restores 6 Heart Shield"'] 5
give @s minecraft:stone_sword[unbreakable={}]
item replace entity @s weapon.offhand with minecraft:cooked_beef 8
effect give @s minecraft:absorption infinite 2 true