# prepare the player for kit
scoreboard players set @s Kit_ID 2
tellraw @s "Now Using: All The Gear"

# give the player the kit contents
item replace entity @s armor.head with minecraft:chainmail_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:chainmail_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:chainmail_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:chainmail_boots{Unbreakable:1b}
give @s stone_sword{Unbreakable:1b}
give @s bow{Unbreakable:1b}
give @s trident{Damage:242,Enchantments:[{id:"loyalty",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-0.5,Operation:1,UUID:[I;476876875,-745677583,497638563,-736475936]}],HideFlags:2}
give @s stick{Enchantments:[{id:"knockback",lvl:1}]}
give @s minecraft:cooked_beef 64
give @s arrow 4
scoreboard players set @s max_arrow_time 100
scoreboard players set @s max_arrows 4