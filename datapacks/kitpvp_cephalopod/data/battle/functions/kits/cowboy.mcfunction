# prepare the player for kit
scoreboard players set @s Kit_ID 20
tellraw @s "Now Using: Cowboy"

# give the player the kit contents
give @s crossbow{Unbreakable:1b,display:{Name:'[{"text":"Revolver","italic":false}]',Lore:['[{"color":"gray","text":"Back in my day, before we had real guns, we"}]','[{"color":"gray","text":"had to make do with these revolver crossbows."}]','[{"color":"white","italic":false,"text":"These? more like DEEZ NUTS AMIRITE GAMERS!?!?!?"}]']},Enchantments:[{id:quick_charge,lvl:5}],HideFlags:4} 1
give @s tipped_arrow{custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:29b,duration:2}],display:{Name:'"Revolver Ammo"',Lore:['"Reduced Damage"']},HideFlags:32} 6
item replace entity @s weapon.offhand with minecraft:cooked_beef 8
item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable:1b,display:{Name:'"Cowboy Hat"',Lore:['"YEE HAW"']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"head",Operation:0,Amount:3,UUID:[I;439028749,-342432341,294819041,-298502513]}]}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b}
scoreboard players set @s shoot_crossbow 0
scoreboard players set @s cowboy_mode 1