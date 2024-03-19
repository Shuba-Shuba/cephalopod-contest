# remove tags
tag @e[tag=sentry] remove owned_sentry

# copy player uuid to system (makes it easier to check from later because no selector will be required)
scoreboard players operation %system UUID0 = @s UUID0
scoreboard players operation %system UUID1 = @s UUID1
scoreboard players operation %system UUID2 = @s UUID2
scoreboard players operation %system UUID3 = @s UUID3

# as all sentries, check if their builderUUID scores match the system's UUID scores and if they do, add a tag
execute as @e[tag=sentry] if score @s builderUUID0 = %system UUID0 if score @s builderUUID1 = %system UUID1 if score @s builderUUID2 = %system UUID2 if score @s builderUUID3 = %system UUID3 run tag @s add owned_sentry

# count owned sentries and put the number on a scoreboard
execute store result score @s sentry_count if entity @e[tag=owned_sentry]


# no idea why, but it took me forever to get my head around minecraft's multiplayer mechanics and work out how this should be done