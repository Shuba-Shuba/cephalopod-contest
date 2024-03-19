# prepare the player for kit
scoreboard players set @s Kit_ID 10
tellraw @s "Now Using: Ender's Kit"

# give the player the kit contents
item replace entity @s armor.head with leather_helmet{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b}
give @s wooden_sword{Unbreakable:1b}
give @s bow{Unbreakable:1b}
give @s tipped_arrow{custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:33b,duration:2}],display:{Name:'"Ender Arrow"'},HideFlags:32} 3
give @s golden_apple
item replace entity @s weapon.offhand with minecraft:cooked_beef 3