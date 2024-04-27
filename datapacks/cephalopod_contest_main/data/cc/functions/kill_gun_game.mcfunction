scoreboard players remove @s kills 1
clear @s
scoreboard players add @s tier 1
execute if score @s tier matches 1 run function shb:give/carrot/rocket
execute if score @s tier matches 2 run function shb:give/carrot/assault_rifle
execute if score @s tier matches 3 run function shb:give/carrot/shotgun
execute if score @s tier matches 4 run function shb:give/carrot/musket
execute if score @s tier matches 5 run give @s minecraft:iron_sword[unbreakable={},custom_model_data=3,custom_name='{"text":"Knife","italic":false}']
execute if score @s tier matches 6 run tag @s add winner
execute if score @s tier matches 6 run tellraw @a [{"selector":"@s"},{"text":" is safe.","color":"aqua"}]

#me killed someone