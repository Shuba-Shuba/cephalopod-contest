# @s = player preparing for fight
# check which weapons player has
scoreboard players reset item.bat game
scoreboard players reset item.shotgun game
scoreboard players reset item.backstab game
execute store result score item.bat game run clear @s wooden_sword{CustomModelData:3} 1
execute store result score item.shotgun game run clear @s carrot_on_a_stick{CustomModelData:206} 1
execute store result score item.backstab game run clear @s iron_sword{CustomModelData:3} 1

# save and clear inventory
data modify entity @e[type=marker,tag=this,limit=1] data.Inventory set from entity @a[tag=this,limit=1] Inventory
clear

# give usable versions of weapons
execute unless score item.backstab game matches 1.. run scoreboard players set @s class -1
execute if score item.backstab game matches 1.. run item replace entity @s hotbar.0 with dirt
execute if score item.backstab game matches 1.. run scoreboard players set @s class 0
execute if score item.backstab game matches 1.. run scoreboard players set @s backstab_break 0
execute if score item.backstab game matches 1.. run scoreboard players set @s backstab_cd 0
execute if score item.bat game matches 1.. run give @s wooden_sword{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Baseball Bat","italic":false}'}}
execute if score item.shotgun game matches 1.. run function shb:give/carrot/shotgun

# free player
gamemode adventure
tp ~ ~ ~
effect give @s weakness 5 255
effect give @s resistance 5 255
scoreboard players set @s deaths 0
playsound entity.experience_orb.pickup master @s ~ ~ ~ 2 1 1