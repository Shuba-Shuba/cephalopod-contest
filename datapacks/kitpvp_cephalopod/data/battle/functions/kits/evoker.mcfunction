# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 34
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Now Using: Evoker"

# give the player the kit contents

give @s carrot_on_a_stick{evoker:1b,display:{Name:'{"text":"Evoker Fangs","italic":false}'}}
item replace entity @s armor.head with chainmail_helmet{Unbreakable:1b}
give @s cooked_beef 16
give @s lingering_potion{custom_potion_effects:[{id:"minecraft:poison",amplifier:4,duration:160}],CustomPotionColor:41995,display:{Name:"{\"text\":\"Neurotoxin\",\"color\":\"dark_green\",\"italic\":false}"}} 3