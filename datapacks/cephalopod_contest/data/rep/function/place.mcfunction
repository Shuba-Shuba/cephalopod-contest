summon marker ~ ~ ~ {Tags:["init","anchor"]}
rotate @n[type=marker,tag=init] ~ ~
execute if entity @s[advancements={rep:melee=true}] run tag @n[type=marker,tag=init] add melee
advancement revoke @s only rep:melee
execute if entity @s[advancements={rep:hurt=true}] run tag @n[type=marker,tag=init] add hurt
advancement revoke @s only rep:hurt
scoreboard players operation @n[type=marker,tag=init] anchor_id = @s anchor_id
execute if score rep.recording config matches 0 run scoreboard players add @s anchor_index 1
execute if score rep.recording config matches 0 run scoreboard players operation @n[type=marker,tag=init] anchor_index = @s anchor_index
execute if score rep.recording config matches 1 run scoreboard players operation @n[type=marker,tag=init] anchor_index = rep.replay_length config
tag @e[type=marker] remove init

#say place