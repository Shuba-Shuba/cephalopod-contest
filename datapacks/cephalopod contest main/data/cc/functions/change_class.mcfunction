execute if score @s mini_tnt_class matches -1 store result score @s class run random value 0..3
execute if score @s mini_tnt_class matches -1 if score @s class matches 0 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Gardener","color":"dark_green","bold":true}," (random)"]
execute if score @s mini_tnt_class matches -1 if score @s class matches 1 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Technician","color":"aqua","bold":true}," (random)"]
execute if score @s mini_tnt_class matches -1 if score @s class matches 2 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Engineer","color":"yellow","bold":true}," (random)"]
execute if score @s mini_tnt_class matches -1 if score @s class matches 3 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Architect","color":"light_purple","bold":true}," (random)"]
execute if score @s mini_tnt_class matches 0 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Gardener","color":"dark_green","bold":true}]
execute if score @s mini_tnt_class matches 1 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Technician","color":"aqua","bold":true}]
execute if score @s mini_tnt_class matches 2 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Engineer","color":"yellow","bold":true}]
execute if score @s mini_tnt_class matches 3 run tellraw @a ["",{"selector":"@s"}," switched to ",{"text":"Architect","color":"light_purple","bold":true}]

scoreboard players operation @s selected_class = @s mini_tnt_class
execute if score @s selected_class matches 0..3 run scoreboard players operation @s class = @s selected_class
scoreboard players set @s mini_tnt_class -2