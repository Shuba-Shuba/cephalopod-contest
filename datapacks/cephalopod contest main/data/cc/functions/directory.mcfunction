execute if entity @s[type=!arrow] store result score %level arrow run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier 1
execute if entity @s[type=arrow] store result score %level arrow run data get entity @s custom_potion_effects[0].amplifier

execute if score %level arrow matches 69 at @s[type=!arrow] run function cc:dodgeball_hit
execute if score %level arrow matches 30 at @s run function battle:arrows/tnt
execute if score %level arrow matches 31 at @s run function battle:arrows/lightning
execute if score %level arrow matches 32 at @s[type=player] run function battle:arrows/freeze
execute if score %level arrow matches 32 at @s[type=arrow] run function battle:arrows/freeze
#execute if score %level arrow matches 33 at @s run function battle:arrows/tp
execute if score %level arrow matches 33 as @s[type=arrow,nbt={inGround:1b}] on passengers run gamemode adventure
execute if score %level arrow matches 33 as @s[type=arrow,nbt={inGround:1b}] on passengers run ride @s dismount
execute if score %level arrow matches 33 at @s[type=!arrow] run gamemode adventure @p[gamemode=spectator,tag=!ded,tag=!out,scores={Kit_ID=10}]
execute if score %level arrow matches 34 at @s run function battle:arrows/blindness
execute if score %level arrow matches 35 at @s[type=player] run function cc:tag_entity
execute if score %level arrow matches 35 at @s[type=arrow] if data entity @s {inBlockState:{Name:"minecraft:barrier"}} on passengers run function cc:tag_invalid
execute if score %level arrow matches 35 at @s[type=arrow] unless data entity @s {inBlockState:{Name:"minecraft:barrier"}} run data modify storage tmp inBlockState.name set from entity @s inBlockState.Name
execute if score %level arrow matches 35 at @s[type=arrow] unless data entity @s {inBlockState:{Name:"minecraft:barrier"}} on passengers run function cc:tag_block_search with storage tmp inBlockState

kill @s[type=arrow]
execute if score %level arrow matches 35 run kill @e[type=marker,tag=tnt_triangulator,predicate=!cc:is_riding_arrow]