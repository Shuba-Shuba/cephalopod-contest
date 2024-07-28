# prepare the player for kit
scoreboard players set @s Kit_ID 10
tellraw @s "Now Using: Ender's Kit"

# give the player the kit contents
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={}]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={}]
give @s minecraft:wooden_sword[unbreakable={}]
give @s minecraft:bow[unbreakable={}]
give @s minecraft:tipped_arrow[custom_name='"Ender Arrow"',potion_contents={custom_effects:[{id:"minecraft:water_breathing",amplifier:33b,duration:2}]},hide_additional_tooltip={}] 3
give @s golden_apple
item replace entity @s weapon.offhand with minecraft:cooked_beef 3