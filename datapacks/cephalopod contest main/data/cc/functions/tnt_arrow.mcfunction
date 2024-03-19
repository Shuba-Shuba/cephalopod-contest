# get arrow id
#execute store result score .level game run data get entity @s custom_potion_effects[{id:"minecraft:water_breathing"}].amplifier
scoreboard players operation .sys tnt_arrow = @s tnt_arrow

# id null - default arrow
execute unless score .sys tnt_arrow matches 1.. unless data entity @s {custom_potion_effects:[{id:"minecraft:water_breathing"}]} run function shb:explode_destructive

# id 1 - ARC crystal arrow
execute if score .sys tnt_arrow matches 1 unless data entity @s {inBlockState:{Name:"minecraft:barrier"}} on origin run function cc:summon_crystal
execute if score .sys tnt_arrow matches 1 if data entity @s {inBlockState:{Name:"minecraft:barrier"}} on origin run scoreboard players remove @s arrow_count 1
execute if score .sys tnt_arrow matches 1 if data entity @s {inBlockState:{Name:"minecraft:barrier"}} on origin run function cc:arrow_reload
execute if score .sys tnt_arrow matches 1 run kill @s