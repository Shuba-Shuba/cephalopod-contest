# prepare the player for kit
scoreboard players set @s Kit_ID 30
attribute @s minecraft:generic.max_health base set 16
tellraw @s "Now Using: Baseball Player"

# give the player the kit contents
give @s wooden_sword{CustomModelData:3,Enchantments:[{id:"minecraft:knockback",lvl:2}],Unbreakable:1b}
effect give @s speed infinite 2 true
damage @s 1
item replace entity @s armor.head with netherite_helmet{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b}
give @s cooked_beef 6