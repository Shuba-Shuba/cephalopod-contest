# prepare the player for kit
scoreboard players set @s Kit_ID 26
tellraw @s "Now Using: Pyro"

# give the player the kit contents
function shb:give/carrot/flamethrower
give @s blaze_rod{display:{Name:'{"text":"Sparkler","italic":false}',Lore:['{"text":"wow it actually sparkles thats crazy dude","color":"gray"}']},Enchantments:[{id:"knockback",lvl:1},{id:"fire_aspect",lvl:2},{"id":"sharpness",lvl:4}]}
item replace entity @s armor.head with tinted_glass
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with golden_leggings{Unbreakable:1b}
item replace entity @s armor.feet with golden_boots{Unbreakable:1b}
give @s cooked_beef 64
give @s lingering_potion{pot:1b,custom_potion_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],CustomPotionColor:41995,display:{Name:'{"text":"Neurotoxin","color":"dark_green","italic":false}'}}