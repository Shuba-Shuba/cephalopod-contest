execute if score .loaded stats matches 0 run function shb:gun/get_stats

function shb:reload/ammo/get

scoreboard players remove @s reload.repeat 1
scoreboard players operation @s reload.time = .reload.time stats

scoreboard players operation .ammo.count stats += .reload.per stats
scoreboard players operation .ammo.reserve stats -= .reload.per stats
scoreboard players set .save stats 1

execute if score .ammo.reserve stats matches ..0 run function shb:reload/underflow
execute if score .ammo.count stats > .reload.mag stats run function shb:reload/overflow
execute if score .ammo.count stats = .reload.mag stats run scoreboard players set @s reload.repeat -1

execute if score @s reload.repeat matches ..0 run function shb:reload/stop

scoreboard players operation #ammo.reserve stats -= .ammo.reserve stats
execute if score #ammo.reserve stats matches 1.. run function shb:reload/ammo/remove

#say reload per