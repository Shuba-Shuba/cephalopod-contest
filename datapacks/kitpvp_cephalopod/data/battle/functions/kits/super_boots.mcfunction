# prepare the player for kit
scoreboard players set @s Kit_ID 15
tellraw @s "Now Using: Super Boots"

# give the player the kit contents
item replace entity @s armor.feet with minecraft:netherite_boots[enchantments={depth_strider:3,soul_speed:3,protection:1,feather_falling:3},attribute_modifiers=[{operation:"add_value",type:"generic.movement_speed",amount:0.025d,name:"generic.movement_speed",uuid:[I;398348745,-297394739,398649863,-394792874]},{operation:"add_value",type:"generic.armor",amount:2,name:"generic.armor",uuid:[I;389837482,-392749275,294272047,-284652947]}],unbreakable={}]
give @s minecraft:iron_sword[unbreakable={}]
item replace entity @s weapon.offhand with minecraft:cooked_chicken 64
give @s minecraft:trident[custom_name='{"text":"Trident (RIPTIDE ONLY)","italic":false}',enchantments={riptide:3},attribute_modifiers=[{operation:"add_multiplied_base",type:"generic.attack_damage",amount:-0.5d,slot:"mainhand",name:"generic.attack_damage",uuid:[I;394836593,-372947394,382659273,-927492745]}]]
item replace entity @s armor.head with glass