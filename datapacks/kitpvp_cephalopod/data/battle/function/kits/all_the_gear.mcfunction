# prepare the player for kit
scoreboard players set @s Kit_ID 2
tellraw @s "Now Using: All The Gear"

# give the player the kit contents
item replace entity @s armor.head with minecraft:chainmail_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:chainmail_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:chainmail_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:chainmail_boots[unbreakable={}]
give @s minecraft:stone_sword[unbreakable={}]
give @s minecraft:bow[unbreakable={}]
give @s minecraft:trident[damage=0,max_damage=8,enchantments={loyalty:1},attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_damage",amount:1d,id:"melee"}],show_in_tooltip:1b},custom_name='{"text":"Trident (1 melee damage)","italic":false}']
give @s minecraft:stick[enchantments={knockback:1}]
give @s minecraft:cooked_beef 64
give @s arrow 4
scoreboard players set @s max_arrow_time 100
scoreboard players set @s max_arrows 4