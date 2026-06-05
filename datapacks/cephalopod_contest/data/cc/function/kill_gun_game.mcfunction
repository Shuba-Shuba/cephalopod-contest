scoreboard players remove @s kills 1
clear @s
scoreboard players add @s tier 1
execute if score @s tier matches 1 run function shb:give/rocket
execute if score @s tier matches 2 run function shb:give/assault_rifle
execute if score @s tier matches 3 run function shb:give/shotgun
execute if score @s tier matches 4 run function shb:give/musket
execute if score @s tier matches 5 run give @s minecraft:iron_sword[unbreakable={},item_model="cc:dagger",swing_animation={type:stab,duration:15},item_name={text:"Knife",italic:false}]
execute if score @s tier matches 6 run tag @s add winner
execute if score @s tier matches 6 run tellraw @a [{selector:"@s"},{text:" is safe.",color:"aqua"}]

#me killed someone