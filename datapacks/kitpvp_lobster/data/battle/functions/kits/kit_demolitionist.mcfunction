# prepare the player for kit
scoreboard players set @s Kit_ID 7
attribute @s minecraft:generic.max_health base set 20
tellraw @s "Now Using: Demoman"

# give the player the kit contents
give @s wooden_sword{Unbreakable:1b}
item replace entity @s armor.head with minecraft:golden_helmet{Enchantments:[{id:"blast_protection",lvl:4},{id:"unbreaking",lvl:10},{id:"fire_protection",lvl:2}]}
item replace entity @s armor.chest with minecraft:golden_chestplate{Enchantments:[{id:"blast_protection",lvl:4},{id:"unbreaking",lvl:10},{id:"fire_protection",lvl:2}]}
item replace entity @s armor.legs with minecraft:golden_leggings{Enchantments:[{id:"blast_protection",lvl:4},{id:"unbreaking",lvl:10},{id:"fire_protection",lvl:2}]}
item replace entity @s armor.feet with minecraft:golden_boots{Enchantments:[{id:"blast_protection",lvl:4},{id:"unbreaking",lvl:10},{id:"fire_protection",lvl:2},{id:"feather_falling",lvl:4}]}
give @s minecraft:cooked_beef 64
function shb:give/carrot/rocket_bad