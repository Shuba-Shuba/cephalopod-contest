# prepare the player for kit
scoreboard players set @s Kit_ID 42
tellraw @s "Now Using: Gladiator"

# give the player the kit contents
item replace entity @s armor.head with golden_helmet{Unbreakable:1b}
item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with golden_leggings{Unbreakable:1b}
item replace entity @s armor.feet with golden_boots{Unbreakable:1b}
give @s wooden_sword{Unbreakable:1b}
give @s trident{Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:1,UUID:[I;328473948,-834983498,235463563,-736473936],Slot:"mainhand"}]}
give @s cooked_cod 64