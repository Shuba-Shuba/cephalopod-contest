# prepare the player for kit
scoreboard players set @s Kit_ID 42
tellraw @s "Now Using: Gladiator"

# give the player the kit contents
item replace entity @s armor.head with minecraft:golden_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:golden_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:golden_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:golden_boots[unbreakable={}]
give @s minecraft:wooden_sword[unbreakable={}]
give @s minecraft:trident[unbreakable={},enchantments={loyalty:3},attribute_modifiers=[{operation:"add_multiplied_base",type:"generic.attack_damage",amount:3,slot:"mainhand",name:"generic.attack_damage",uuid:[I;328473948,-834983498,235463563,-736473936]}]]
give @s cooked_cod 64