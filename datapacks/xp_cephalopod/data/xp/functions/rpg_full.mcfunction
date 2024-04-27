execute store result score @s items run clear @s stick[minecraft:custom_model_data=11005] 0
execute if score @s items matches 1.. run function xp:demolitionist
execute if score @s items matches 0 run tag @s add no_demo

execute store result score @s items run clear @s stick[minecraft:custom_model_data=11031] 0
execute if score @s items matches 1.. run function xp:gravity
execute if score @s items matches 0 run tag @s add no_grav

xp set @s[tag=no_grav,tag=no_demo] 0 points
tag @s remove no_grav
tag @s remove no_demo