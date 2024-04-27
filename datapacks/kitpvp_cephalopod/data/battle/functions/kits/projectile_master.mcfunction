# prepare the player for kit
scoreboard players set @s Kit_ID 3
tellraw @s "Now Using: Projectile Master"

# give the player the kit contents
give @s minecraft:trident[unbreakable={},enchantments={loyalty:10},attribute_modifiers={modifiers:[{operation:"add_multiplied_base",type:"generic.attack_damage",amount:3,slot:"mainhand",name:"generic.attack_damage",uuid:[I;476876875,-745677583,497638563,-736475936]}],show_in_tooltip:0b}]
give @s minecraft:bow[unbreakable={},enchantments={power:3,mending:1,unbreaking:3,punch:1}]
give @s minecraft:cooked_beef 64
give @s minecraft:stick[enchantments={knockback:1}]
give @s arrow
item replace entity @s armor.chest with minecraft:iron_chestplate[unbreakable={}]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={}]
item replace entity @s armor.head with minecraft:iron_helmet[unbreakable={}]
scoreboard players set @s max_arrow_time 60
scoreboard players set @s max_arrows 4