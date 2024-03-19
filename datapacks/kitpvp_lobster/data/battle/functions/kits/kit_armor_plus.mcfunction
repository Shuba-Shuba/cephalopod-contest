# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 6
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Now Using: Kit Armor+"

# give the player the kit contents

item replace entity @s weapon.offhand with minecraft:cooked_beef 8
give @s minecraft:wooden_shovel{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;1672887746,-720354855,-1850184254,-2136929711],Slot:"mainhand"}]} 1
item replace entity @s armor.head with diamond_helmet{Unbreakable:1b}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.feet with diamond_boots{Unbreakable:1b}