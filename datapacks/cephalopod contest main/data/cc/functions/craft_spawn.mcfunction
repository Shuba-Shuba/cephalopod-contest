# generate area
place template cc:craft ~ ~ ~
tag @s remove tmp_unteleported
tellraw @a ["[DEBUG] created crafting area for ",{"selector":"@s"}]

# other
scoreboard players add .s craft_index 1
scoreboard players operation @s craft_index = .s craft_index
scoreboard players operation @e[tag=shelf1_red] craft_index = @s craft_index
scoreboard players operation @e[tag=shelf2_red] craft_index = @s craft_index
scoreboard players operation @e[tag=shelf3_red] craft_index = @s craft_index
scoreboard players operation @e[tag=shelf4_red] craft_index = @s craft_index
scoreboard players operation @e[tag=shelf5_red] craft_index = @s craft_index
scoreboard players operation @e[tag=shelf6_red] craft_index = @s craft_index

# after
scoreboard players set @e[tag=shelf1_red] shelf 1
scoreboard players set @e[tag=shelf2_red] shelf 2
scoreboard players set @e[tag=shelf3_red] shelf 3
scoreboard players set @e[tag=shelf4_red] shelf 4 
scoreboard players set @e[tag=shelf5_red] shelf 5
scoreboard players set @e[tag=shelf6_red] shelf 6
tag @e[type=marker,tag=shelf] remove shelf1_red
tag @e[type=marker,tag=shelf] remove shelf2_red
tag @e[type=marker,tag=shelf] remove shelf3_red
tag @e[type=marker,tag=shelf] remove shelf4_red
tag @e[type=marker,tag=shelf] remove shelf5_red
tag @e[type=marker,tag=shelf] remove shelf6_red

# tp
execute if entity @e[type=marker,limit=1,tag=tmp_craft_tp] run tellraw @a ["[DEBUG] found tp point for ",{"selector":"@s"}]
execute positioned as @e[type=marker,tag=tmp_craft_tp,limit=1] run tp @s ~ ~ ~ 90 0
execute positioned as @e[type=marker,tag=tmp_craft_tp,limit=1] run scoreboard players operation @e[tag=craft_storage,limit=1,sort=nearest] craft_index = @s craft_index
kill @e[type=marker,tag=tmp_craft_tp]

# next iteration
execute unless entity @a[tag=tmp_unteleported] run tellraw @a "[DEBUG] finished creating crafting areas!"
execute if entity @a[tag=tmp_unteleported] as @r[tag=tmp_unteleported] positioned ~34 ~ ~ run function cc:craft_spawn