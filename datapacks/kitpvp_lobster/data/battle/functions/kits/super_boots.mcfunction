# prepare the player for kit
scoreboard players set @s Kit_ID 15
tellraw @s "Now Using: Super Boots"

# give the player the kit contents
item replace entity @s armor.feet with minecraft:netherite_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"soul_speed",lvl:3},{id:"protection",lvl:1},{id:"feather_falling",lvl:3}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.025,Operation:0,UUID:[I;398348745,-297394739,398649863,-394792874]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;389837482,-392749275,294272047,-284652947]}],Unbreakable:1b}
give @s iron_sword{Unbreakable:1b}
item replace entity @s weapon.offhand with minecraft:cooked_chicken 64
give @s minecraft:trident{display:{Name:'{"text":"Trident (RIPTIDE ONLY)","italic":false}'},Enchantments:[{id:"riptide",lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-0.5,Operation:1,UUID:[I;394836593,-372947394,382659273,-927492745],Slot:"mainhand"}]}
item replace entity @s armor.head with glass