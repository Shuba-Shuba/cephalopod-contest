# assign player ids to everyone
execute as @a unless score @s anchor_id = @s anchor_id run scoreboard players add .global anchor_id 1
execute as @a unless score @s anchor_id = @s anchor_id run scoreboard players operation @s anchor_id = .global anchor_id

# follow replay path
execute as @e[type=armor_stand,tag=replay,scores={anchor_index=1..}] at @s run function rep:path

# movement recording system
execute if score rep.recording config matches 0 run scoreboard players remove @a[scores={rep_record=1..}] rep_record 1
execute if score rep.recording config matches 0 as @a[scores={rep_record=2..}] at @s run function rep:place
execute if score rep.recording config matches 0 if entity @a[scores={rep_record=1}] run function rep:play
execute if score rep.recording config matches 1 run scoreboard players remove @e[type=marker,tag=anchor] anchor_index 1
execute if score rep.recording config matches 1 run kill @e[type=marker,tag=anchor,scores={anchor_index=..0}]
execute if score rep.recording config matches 1 as @a[tag=!out] at @s run function rep:place