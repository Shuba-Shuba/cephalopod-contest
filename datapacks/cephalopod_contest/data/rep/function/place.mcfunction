execute unless entity @s[tag=rep_initialized] run function rep:first
summon marker ~ ~ ~ {Tags:["init","anchor"]}
rotate @n[type=marker,tag=init] ~ ~
execute if entity @s[advancements={rep:melee=true}] run tag @n[type=marker,tag=init] add melee
advancement revoke @s only rep:melee
execute if entity @s[advancements={rep:hurt=true}] run tag @n[type=marker,tag=init] add hurt
advancement revoke @s only rep:hurt
scoreboard players operation #previous_tick rep_selected_slot = @s rep_selected_slot
execute store result score @s rep_selected_slot run data get entity @s SelectedItemSlot
execute unless score #previous_tick rep_selected_slot = @s rep_selected_slot run advancement grant @s only rep:equipment_update
execute if entity @s[advancements={rep:equipment_update=true}] run function rep:record/equipment
advancement revoke @s only rep:equipment_update
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_sneaking:1b}}} run tag @n[type=marker,tag=init] add sneaking
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_swimming:1b}}} run tag @n[type=marker,tag=init] add swimming
scoreboard players operation @n[type=marker,tag=init] anchor_id = @s anchor_id
execute if score rep.recording config matches 0 run scoreboard players add @s anchor_index 1
execute if score rep.recording config matches 0 run scoreboard players operation @n[type=marker,tag=init] anchor_index = @s anchor_index
execute if score rep.recording config matches 1 run scoreboard players operation @n[type=marker,tag=init] anchor_index = rep.replay_length config
tag @e[type=marker] remove init

#say place