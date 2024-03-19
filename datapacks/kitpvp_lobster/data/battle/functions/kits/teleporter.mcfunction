# prepare the player for kit
scoreboard players set @s Kit_ID 32
tellraw @s "Now Using: Teleporter"

# give the player the kit contents
give @s wooden_shovel{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2},{id:"minecraft:fire_aspect",lvl:1}]}
give @s book{nbk:1b,display:{Name:'{"text":"Teleport To Random Player","italic":false}'}}
give @s cooked_beef 64
item replace entity @s armor.head with leather_helmet{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b}

scoreboard players set @s offhand_carrot 1