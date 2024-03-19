execute if score .loaded stats matches 0 run function shb:gun/get_stats

scoreboard players set @s cd 0
scoreboard players set @s autofire 0
scoreboard players set @s autodelay 0
function shb:reload/stop

scoreboard players operation @s cd = .drawtime stats
execute if score @s cd matches 0 run scoreboard players operation @s cd = .cd stats

execute unless score .id stats matches 1.. run scoreboard players set @s scope 0
execute if score .id stats matches 1.. if predicate shb:scope run scoreboard players set @s scope 1

#say swap