execute at @a if score @p UUID0 = @s builderUUID0 if score @p UUID1 = @s builderUUID1 if score @p UUID2 = @s builderUUID2 if score @p UUID3 = @s builderUUID3 run tag @p add missile_exempt
execute if entity @a[team=red,tag=missile_exempt] run tag @a[team=red] add missile_exempt
execute if entity @a[team=blue,tag=missile_exempt] run tag @a[team=blue] add missile_exempt
execute at @s anchored eyes facing entity @p[distance=..20,tag=!missile_exempt,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},gamemode=adventure] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~
execute at @s anchored eyes if entity @a[distance=..1,gamemode=adventure] positioned ~ ~1 ~ run function shb:explode
execute at @s anchored eyes unless block ^ ^ ^ #shb:air run kill @s