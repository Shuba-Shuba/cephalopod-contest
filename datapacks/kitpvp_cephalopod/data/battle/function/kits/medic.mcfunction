# prepare the player for kit

clear @s
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 41
attribute @s minecraft:max_health base set 20
effect give @s minecraft:saturation 80 255 true
tellraw @s "Now Using: Medic"

# give the player the kit contents

execute at @s run summon item ~ ~ ~ {Item:{id:"splash_potion",count:32,components:{"minecraft:potion_contents":{potion:"strong_healing"}}}}
item replace entity @s armor.head with diamond_helmet
item replace entity @s weapon.offhand with minecraft:cooked_beef 32
give @s golden_apple 8
give @s minecraft:bow[unbreakable={}]
give @s minecraft:tipped_arrow[potion_contents={potion:"minecraft:strong_regeneration"}] 8