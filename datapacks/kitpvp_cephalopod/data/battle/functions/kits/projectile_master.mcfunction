# prepare the player for kit
scoreboard players set @s Kit_ID 3
tellraw @s "Now Using: Projectile Master"

# give the player the kit contents
give @s trident{Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:10}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:1,UUID:[I;476876875,-745677583,497638563,-736475936],Slot:"mainhand"}],HideFlags:2}
give @s bow{Unbreakable:1b,Enchantments:[{id:"power",lvl:3},{id:"mending",lvl:1},{id:"unbreaking",lvl:3},{id:"punch",lvl:1}]}
give @s minecraft:cooked_beef 64
give @s stick{Enchantments:[{id:"knockback",lvl:1}]}
give @s arrow
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b}
item replace entity @s armor.head with iron_helmet{Unbreakable:1b}
scoreboard players set @s max_arrow_time 60
scoreboard players set @s max_arrows 4