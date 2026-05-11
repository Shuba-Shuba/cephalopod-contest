summon marker ~ ~ ~ {Tags:["init","anchor"]}
data modify entity @e[type=marker,tag=init,limit=1] Rotation set from entity @s Rotation
execute if entity @s[advancements={rep:hit=true}] run data modify entity @e[type=marker,tag=init,limit=1] data.hit set value 1b
#execute if entity @s[advancements={rep:hit=true}] run say HIT
advancement revoke @s only rep:hit
scoreboard players operation @e[type=marker,tag=init] anchor_id = @s anchor_id
execute if score rep.recording config matches 0 run scoreboard players add @s anchor_index 1
execute if score rep.recording config matches 0 run scoreboard players operation @e[type=marker,tag=init] anchor_index = @s anchor_index
execute if score rep.recording config matches 1 run scoreboard players operation @e[type=marker,tag=init] anchor_index = rep.replay_length config
tag @e[type=marker] remove init

#say place