# prepare the player for kit
scoreboard players set @s Kit_ID 27
tellraw @s "Now Using: Gravity Master"

# give the player the kit contents
item replace entity @s armor.head with minecraft:iron_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:elytra[unbreakable={}]
item replace entity @s armor.legs with minecraft:chainmail_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:chainmail_boots[unbreakable={}]
give @s minecraft:stone_shovel[custom_name='{"text":"Market Gardener","color":"aqua","italic":false}',lore=['{"text":"bonk","color":"gray"}'],unbreakable={},enchantments={"minecraft:knockback":1},attribute_modifiers=[{operation:"add_value",type:"generic.movement_speed",amount:0.05d,slot:"mainhand",id:"speed"},{operation:"add_value",type:"generic.attack_damage",amount:3,slot:"mainhand",id:"melee"}]] 1
#give @s minecraft:carrot_on_a_stick[custom_model_data=11031,custom_name='{"text":"Gravity Gun","color":"yellow","italic":false}',lore=['{"color":"gray","text":"Have you ever gotten frustrated at someone to"}','{"color":"gray","text":"the point you wanted to throw them out the window?"}','{"color":"gray","text":"Well now you can with the new gravity gun!"}','{"color":"gray","text":"Costs 69 payments of $19.95 +shipping/handling/pissing"}']]
function shb:give/carrot/gravity_gun
give @s cooked_beef 8