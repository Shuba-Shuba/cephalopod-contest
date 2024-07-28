# prepare the player for kit
scoreboard players set @s Kit_ID 20
tellraw @s "Now Using: Cowboy"

# give the player the kit contents
give @s minecraft:crossbow[unbreakable={show_in_tooltip:0b},custom_name='[{"text":"Revolver","italic":false}]',lore=['[{"color":"gray","text":"Back in my day, before we had real guns, we"}]','[{"color":"gray","text":"had to make do with these revolver crossbows."}]','[{"color":"white","italic":false,"text":"These? more like DEEZ NUTS AMIRITE GAMERS!?!?!?"}]'],enchantments={quick_charge:5}] 1
give @s minecraft:tipped_arrow[custom_name='"Revolver Ammo"',lore=['"Reduced Damage"'],potion_contents={custom_effects:[{id:"minecraft:water_breathing",amplifier:29b,duration:2}]},hide_additional_tooltip={}] 6
item replace entity @s weapon.offhand with minecraft:cooked_beef 8
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={},custom_name='"Cowboy Hat"',lore=['"YEE HAW"'],attribute_modifiers=[{operation:"add_value",type:"generic.attack_damage",amount:3,slot:"head",id:"melee"}]]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
scoreboard players set @s shoot_crossbow 0
scoreboard players set @s cowboy_mode 1