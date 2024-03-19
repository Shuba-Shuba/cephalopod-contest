# find owned crystals
scoreboard players operation .search UUID0 = @s UUID0
scoreboard players operation .search UUID1 = @s UUID1
scoreboard players operation .search UUID2 = @s UUID2
scoreboard players operation .search UUID3 = @s UUID3
execute as @e[type=end_crystal,tag=tnt] if score @s ownerUUID0 = .search UUID0 if score @s ownerUUID1 = .search UUID1 if score @s ownerUUID2 = .search UUID2 if score @s ownerUUID3 = .search UUID3 run tag @s add owned_crystal
scoreboard players operation #previous_tick crystal_count = @s crystal_count
execute store result score @s crystal_count if entity @e[type=end_crystal,tag=owned_crystal]

# calculate arrow count including triangulator backup arrow, loaded crossbow, and shot arrows
#execute if score @s crystal_count < #previous_tick crystal_count run function lobster:arrow_reload
#execute if score @s crystal_count matches 0 if score #previous_tick crystal_count matches 2 run function lobster:arrow_reload
#execute if score @s arrow_count matches 3.. run clear @s arrow 1
execute if score @s triangulator_cd matches 0 if data entity @s Inventory[{Slot:35b}] run scoreboard players remove @s arrow_count 1
execute if score @s crossbow_time matches 1.. run scoreboard players add @s arrow_count 1
tag @s add this
execute as @e[type=arrow] on origin at @s if entity @a[tag=this,distance=0] run scoreboard players add @s arrow_count 1
tag @s remove this
scoreboard players operation #tmp arrow_count = @s arrow_count
execute store result score @s arrow_count run data get entity @s Inventory[{Slot:8b}].Count
execute if score @s crystal_count matches 0 if score #tmp arrow_count matches 0 run function lobster:arrow_reload
execute if score @s crystal_count matches 0 if score #tmp arrow_count matches 0..1 run function lobster:arrow_reload
execute if score @s crystal_count matches 1 if score #tmp arrow_count matches 0 run function lobster:arrow_reload

## aim crystal beam at tagged block or entity
# find tagged block or entity
execute as @e[type=#lobster:triangulator_tags,tag=tnt_arc,tag=!out,tag=!ded] if score @s tagUUID0 = .search UUID0 if score @s tagUUID1 = .search UUID1 if score @s tagUUID2 = .search UUID2 if score @s tagUUID3 = .search UUID3 run tag @s add arc_tagged
# if no bow, no midair triangulator arrow shot by this player (suppress_cd tag), not already on cooldown, no tagged entity, start triangulator cooldown
execute unless data entity @s Inventory[{Slot:1b,id:"minecraft:bow"}] unless entity @s[tag=suppress_cd] unless score @s triangulator_cd matches 1.. unless entity @e[type=#lobster:triangulator_tags,tag=arc_tagged] run scoreboard players set @s triangulator_cd 70
# if tagged block or entity, set owned crystal(s)' beam target to that position
execute if score @s crystal_count matches 0 run scoreboard players set @e[type=#lobster:triangulator_tags,tag=arc_tagged] tag_time 0
scoreboard players operation #tmp crystal_count = @s crystal_count
execute if score @s crystal_count matches 1.. as @e[type=#lobster:triangulator_tags,tag=arc_tagged] at @s run function lobster:crystal_beam
execute if score @s crystal_count matches 1.. unless entity @e[type=#lobster:triangulator_tags,tag=arc_tagged] as @e[type=end_crystal,tag=owned_crystal] if data entity @s BeamTarget at @s run function lobster:crystal_antibeam
execute as @e[type=slime,tag=arc_tagged] at @s if block ~ ~ ~ air run tp 0 -200 0

# warp
execute if entity @s[tag=arc_warp] if entity @e[type=#lobster:triangulator_tags,tag=arc_tagged] run function lobster:arc_warp

# reatomize
execute if entity @s[tag=arc_reatomize] run function lobster:arc_reatomize

# reset
tag @s remove arc_reatomize
tag @s remove arc_warp
tag @s remove suppress_cd
tag @e[type=#lobster:triangulator_tags] remove arc_tagged
tag @e[type=end_crystal] remove owned_crystal