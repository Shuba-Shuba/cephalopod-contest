# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 29
attribute @s minecraft:generic.max_health base set 6
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Now Using: Suicide Bomber"

# give the player the kit contents

give @s tnt{nbk:1b,display:{Name:'{"text":"Self Destruct","italic":false}'}}
give @s wooden_sword{Damage:58}
effect give @s speed infinite 0 true
effect give @s minecraft:instant_damage 1 0

scoreboard players set @s offhand_carrot 1