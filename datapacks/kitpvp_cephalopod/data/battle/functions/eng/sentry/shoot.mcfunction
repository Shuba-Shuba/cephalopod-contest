# @s = a sentry
# get stats
data remove storage shb:gun stats
data modify storage shb:gun stats set from entity @s HandItems[0].components.minecraft:custom_data.stats
execute store result score .id stats run data get storage shb:gun stats.id
function shb:gun/get_stats

# find original builder to prevent them fom being shot
function battle:eng/check

# sentry shoots at nearest *visible* player within 10 blocks
execute if entity @s[team=red] run tag @a[team=red] add on_team
execute if entity @s[team=blue] run tag @a[team=blue] add on_team
execute if score debug.enabled config matches 1 anchored eyes facing entity @p[distance=..10,gamemode=adventure,tag=!on_team,tag=!owner,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},nbt=!{active_effects:[{id:"minecraft:resistance"}]}] eyes run say [debug] sentry has shot
tp @s ~ ~ ~ facing entity @p[distance=..10,gamemode=adventure,tag=!on_team,tag=!owner,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},nbt=!{active_effects:[{id:"minecraft:resistance"}]}] feet
execute facing entity @p[distance=..10,gamemode=adventure,tag=!on_team,tag=!owner,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},nbt=!{active_effects:[{id:"minecraft:resistance"}]}] feet run function shb:shoot/shoot
scoreboard players set .save stats 0

# remove owner tag so that they do not become immune to other sentries
tag @a remove owner
tag @a remove on_team