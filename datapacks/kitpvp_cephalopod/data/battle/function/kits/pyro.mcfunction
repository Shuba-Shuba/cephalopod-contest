# prepare the player for kit
scoreboard players set @s Kit_ID 26
tellraw @s "Now Using: Pyro"

# give the player the kit contents
function shb:give/carrot/flamethrower
give @s minecraft:blaze_rod[custom_name='{"text":"Sparkler","italic":false}',lore=['{"text":"wow it actually sparkles thats crazy dude","color":"gray"}'],enchantments={knockback:1,fire_aspect:2,sharpness:4}]
item replace entity @s armor.head with tinted_glass
item replace entity @s armor.chest with minecraft:iron_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:golden_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:golden_boots[unbreakable={}]
give @s cooked_beef 64
give @s minecraft:lingering_potion[custom_name='{"text":"Neurotoxin","color":"dark_green","italic":false}',potion_contents={custom_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],custom_color:41995},custom_data={pot:1b}]