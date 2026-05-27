tag @s add rep_initialized
advancement grant @s only rep:equipment_update

execute in cc:void run summon marker 0 0 0 {Tags:["oldest_state","init"]}
scoreboard players operation @n[type=marker,tag=oldest_state,tag=init] anchor_id = @s anchor_id
tag @e[type=marker] remove init