# prepare the player for kit
scoreboard players set @s Kit_ID 27
tellraw @s "Now Using: Gravity Master"

# give the player the kit contents
item replace entity @s armor.head with iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with elytra{Unbreakable:1b}
item replace entity @s armor.legs with chainmail_leggings{Unbreakable:1b}
item replace entity @s armor.feet with chainmail_boots{Unbreakable:1b}
give @s stone_shovel{display:{Name:'{"text":"Market Gardener","color":"aqua","italic":false}',Lore:['{"text":"bonk","color":"gray"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;855022582,-237616447,-1954130516,661217818],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-554110992,521686562,-1412403182,304833256],Slot:"mainhand"}]} 1
#give @s carrot_on_a_stick{CustomModelData:11031,display:{Name:'{"text":"Gravity Gun","color":"yellow","italic":false}',Lore:['{"color":"gray","text":"Have you ever gotten frustrated at someone to"}','{"color":"gray","text":"the point you wanted to throw them out the window?"}','{"color":"gray","text":"Well now you can with the new gravity gun!"}','{"color":"gray","text":"Costs 69 payments of $19.95 +shipping/handling/pissing"}']}}
function shb:give/carrot/gravity_gun
give @s cooked_beef 8