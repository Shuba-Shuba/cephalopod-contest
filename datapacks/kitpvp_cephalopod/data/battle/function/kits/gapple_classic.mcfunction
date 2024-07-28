# prepare the player for kit
scoreboard players set @s Kit_ID 13
tellraw @s "Now Using: Gapple Classic"

# give the player the kit contents
item replace entity @s armor.head with minecraft:chainmail_helmet[unbreakable={}]
item replace entity @s armor.feet with minecraft:chainmail_boots[unbreakable={}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:chainmail_leggings[unbreakable={}]
give @s minecraft:stone_sword[unbreakable={}]
give @s golden_apple 3
give @s minecraft:fishing_rod[enchantments={unbreaking:3}]
give @s minecraft:bow[unbreakable={}]
give @s arrow 3
item replace entity @s weapon.offhand with cooked_beef 5
scoreboard players set @s max_arrows 3
scoreboard players set @s max_arrow_time 200