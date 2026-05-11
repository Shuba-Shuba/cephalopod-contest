function shb:gun/get_stats

scoreboard players operation @s cd = .drawtime stats
execute if score @s cd matches 0 run scoreboard players operation @s cd = .cd stats

scoreboard players operation @s reload.time = .reload.time stats
scoreboard players operation @s reload.repeat = .reload.mag stats
scoreboard players operation @s reload.repeat /= .reload.per stats

#say reload