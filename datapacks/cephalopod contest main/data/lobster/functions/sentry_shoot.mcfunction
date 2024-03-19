## owner search
# remove tags
tag @a remove owner

# copy sentry builder uuid to system (makes it easier to check from later because no selector will be required)
scoreboard players operation .search UUID0 = @s ownerUUID0
scoreboard players operation .search UUID1 = @s ownerUUID1
scoreboard players operation .search UUID2 = @s ownerUUID2
scoreboard players operation .search UUID3 = @s ownerUUID3

# as all live players, check if their UUID scores match the system's builderUUID scores and if they do, add a tag
execute as @a[tag=!out,tag=!ded] if score @s UUID0 = .search UUID0 if score @s UUID1 = .search UUID1 if score @s UUID2 = .search UUID2 if score @s UUID3 = .search UUID3 run tag @s add owner

# debug, prints owner(s) which should only be the original builder and no one else
execute if score debug.enabled config matches 2 run say Sentry owner list: @a[tag=owner]

## fire
tag @p[distance=..10,tag=!out,tag=!ded,tag=!owner,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] add shoot_at
execute anchored eyes if entity @p[tag=shoot_at,nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @p[tag=shoot_at] feet
execute anchored eyes if entity @p[tag=shoot_at,nbt={OnGround:1b}] positioned ~ ~1.8 ~ facing entity @p[tag=shoot_at] feet positioned ~ ~-1.8 ~ run tp @s ~ ~ ~ ~ ~
execute at @s if entity @p[tag=shoot_at] run function shb:shoot/tnt_sentry
tag @a remove shoot_at
tag @a remove owner