# prepare the player for kit
scoreboard players set @s Kit_ID 42
tellraw @s "Now Using: Gladiator"

# give the player the kit contents
item replace entity @s armor.head with minecraft:golden_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:golden_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:golden_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:golden_boots[unbreakable={}]
give @s minecraft:wooden_sword[unbreakable={}]
give @s minecraft:trident[unbreakable={},enchantments={loyalty:3},attribute_modifiers=[{operation:"add_value",type:"generic.attack_damage",amount:3,slot:"mainhand",id:"melee"}],custom_name='{"text":"Trident (3 melee damage)","italic":false}']
give @s cooked_cod 64