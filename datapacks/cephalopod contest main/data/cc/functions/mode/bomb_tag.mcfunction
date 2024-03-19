scoreboard players set %mode game 2
function cc:camera_end
execute unless score time.bomb_tag config matches 6.. run tellraw @a "Reset bomb tag time to 25 seconds because it was set to under 6 seconds"
execute unless score time.bomb_tag config matches 6.. run scoreboard players set time.bomb_tag config 25
execute store result bossbar cc:time max run scoreboard players get time.bomb_tag config
execute store result bossbar cc:time value run scoreboard players get time.bomb_tag config
scoreboard players operation %second game = time.bomb_tag config
execute if score %map game matches 0 in cc:void run spreadplayers 167 -3 1 5 under 120 false @a[tag=!out]
execute if score %map game matches 1 in cc:void run spreadplayers 173 -73 1 5 under 120 false @a[tag=!out]
execute if score %map game matches 2 in cc:void run spreadplayers 186 -197 1 5 under 125 false @a[tag=!out]
execute if score %map game matches 3 in cc:void run spreadplayers 105 57 1 5 under 90 false @a[tag=!out]
execute if score %map game matches 4 in cc:void run tp @a[tag=!out] 36 111.5 401
execute if score %map game matches 5 in cc:void run spreadplayers 247 609 5 10 under 150 false @a[tag=!out]
execute if score %map game matches 6 in cc:void run spreadplayers 261 39 5 10 under 110 false @a[tag=!out]
scoreboard players set rep.recording config 1
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# bomb stuff
tag @a remove winner
tag @a remove bomb
tag @r[tag=!out,tag=!ded] add bomb
item replace entity @a[tag=bomb] armor.head with tnt{Enchantments:[{id:"knockback",lvl:2},{id:"binding_curse",lvl:1}]}
tellraw @a {"text":"Bomb has been planted","color":"red"}