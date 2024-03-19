## choose map
execute store result score %map game run random value 0..15

# start round
gamemode spectator @a[tag=!out]
tp @a[tag=!out] 616 20 -584
scoreboard players set %camera game 24
schedule function lobster:mode/mini_tnt 12s

# assign classes
scoreboard players reset @a class
execute if score tnt.force_class config matches -2 run tellraw @a [\
    "\nClick below to select class:\n",\
    {"text":"Random\n","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger mini_tnt_class set -1"},"hoverEvent":{"action":"show_text","value":"/trigger mini_tnt_class set -1"}},\
    {"text":"Gardener\n","color":"dark_green","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger mini_tnt_class set 0"},"hoverEvent":{"action":"show_text","value":"/trigger mini_tnt_class set 0"}},\
    {"text":"Technician\n","color":"aqua","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger mini_tnt_class set 1"},"hoverEvent":{"action":"show_text","value":"/trigger mini_tnt_class set 1"}},\
    {"text":"Engineer\n","color":"yellow","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger mini_tnt_class set 2"},"hoverEvent":{"action":"show_text","value":"/trigger mini_tnt_class set 2"}},\
    {"text":"Architect","color":"light_purple","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger mini_tnt_class set 3"},"hoverEvent":{"action":"show_text","value":"/trigger mini_tnt_class set 3"}}\
]
execute if score tnt.force_class config matches -2 as @a unless score @s selected_class matches -1..3 unless score @s mini_tnt_class matches -1..3 run scoreboard players set @s selected_class -1
execute if score tnt.force_class config matches -2 as @a unless score @s selected_class = @s mini_tnt_class if score @s mini_tnt_class matches -1..3 run scoreboard players operation @s selected_class = @s mini_tnt_class
execute if score tnt.force_class config matches -1 run tellraw @a "FORCED RANDOM CLASS ENABLED"
execute if score tnt.force_class config matches 0.. run tellraw @a "FORCED DETERMINATE CLASS ENABLED"
execute if score tnt.force_class config matches 0.. run scoreboard players operation @a[tag=!out,tag=!ded] class = tnt.force_class config
execute if score tnt.force_class config matches -1 as @a[tag=!out,tag=!ded] store result score @s class run random value 0..3
execute if score tnt.force_class config matches -2 as @a[tag=!out,tag=!ded,scores={selected_class=-1}] store result score @s class run random value 0..3
execute if score tnt.force_class config matches -2 as @a[tag=!out,tag=!ded,scores={selected_class=0..3}] run scoreboard players operation @s class = @s selected_class
execute as @a[scores={class=0}] run tellraw @a ["",{"selector":"@s"}," playing as: ",{"text":"Gardener","color":"dark_green","bold":true}]
execute as @a[scores={class=1}] run tellraw @a ["",{"selector":"@s"}," playing as: ",{"text":"Technician","color":"aqua","bold":true}]
execute as @a[scores={class=2}] run tellraw @a ["",{"selector":"@s"}," playing as: ",{"text":"Engineer","color":"yellow","bold":true}]
execute as @a[scores={class=3}] run tellraw @a ["",{"selector":"@s"}," playing as: ",{"text":"Architect","color":"light_purple","bold":true}]
execute if entity @a[tag=ded] run tellraw @a ["",{"selector":"@a[tag=ded]"}," spectating (LOL)"]