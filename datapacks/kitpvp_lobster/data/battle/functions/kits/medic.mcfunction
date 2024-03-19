# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 41
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Now Using: Medic"

# give the player the kit contents

execute at @s run summon item ~ ~ ~ {Item:{id:"splash_potion",Count:32,tag:{Potion:"strong_healing"}}}
item replace entity @s armor.head with diamond_helmet
item replace entity @s weapon.offhand with minecraft:cooked_beef 32
give @s golden_apple 8
give @s bow{Unbreakable:1b}
give @s tipped_arrow{Potion:"minecraft:strong_regeneration"} 8