scoreboard players set #tmp_ended game 1
scoreboard players add @s craft 1
execute if score %index craft matches 0 run data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.craft[0]
execute if score %index craft matches 1 run data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.craft[1]
execute if score %index craft matches 2 run data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.craft[2]
execute if score %index craft matches 0 run tellraw @a ["",{"selector":"@s"}," crafted ",{"nbt":"data.names[0]","entity":"@e[tag=craft_storage,limit=1,sort=nearest]","interpret":true},"!"]
execute if score %index craft matches 1 run tellraw @a ["",{"selector":"@s"}," crafted ",{"nbt":"data.names[1]","entity":"@e[tag=craft_storage,limit=1,sort=nearest]","interpret":true},"!"]
execute if score %index craft matches 2 run tellraw @a ["",{"selector":"@s"}," crafted ",{"nbt":"data.names[2]","entity":"@e[tag=craft_storage,limit=1,sort=nearest]","interpret":true},"!"]
execute if score %index craft matches 0 run data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.names[0]
execute if score %index craft matches 1 run data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.names[1]
execute if score %index craft matches 2 run data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.names[2]
tellraw @s ["Remaining items to craft: ",{"nbt":"data.names[]","entity":"@e[tag=craft_storage,limit=1,sort=nearest]","interpret":true}]
#tellraw @a ["",{"selector":"@s"}," crafted ",{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true},"!"]
item replace entity @s weapon.mainhand with air
execute if score @s craft matches 3 run tag @s add winner