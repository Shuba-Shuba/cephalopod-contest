# prepare the player for kit
scoreboard players set @s Kit_ID 7
attribute @s minecraft:generic.max_health base set 20
tellraw @s "Now Using: Demoman"

# give the player the kit contents
give @s minecraft:wooden_sword[unbreakable={}]
item replace entity @s armor.head with minecraft:golden_helmet[enchantments={blast_protection:4,unbreaking:10,fire_protection:2}]
item replace entity @s armor.chest with minecraft:golden_chestplate[enchantments={blast_protection:4,unbreaking:10,fire_protection:2}]
item replace entity @s armor.legs with minecraft:golden_leggings[enchantments={blast_protection:4,unbreaking:10,fire_protection:2}]
item replace entity @s armor.feet with minecraft:golden_boots[enchantments={blast_protection:4,unbreaking:10,fire_protection:2,feather_falling:4}]
give @s minecraft:cooked_beef 64
function shb:give/carrot/rocket_bad