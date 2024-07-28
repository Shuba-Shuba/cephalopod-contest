# remove tags
tag @a remove owner

# copy sentry builder uuid to system (makes it easier to check from later because no selector will be required)
scoreboard players operation %system UUID0 = @s builderUUID0
scoreboard players operation %system UUID1 = @s builderUUID1
scoreboard players operation %system UUID2 = @s builderUUID2
scoreboard players operation %system UUID3 = @s builderUUID3

# as all live players, check if their UUID scores match the system's builderUUID scores and if they do, add a tag
execute as @a[tag=!out] if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run tag @s add owner

# debug, prints owner(s) which should only be the original builder and no one else
execute if score debug.enabled config matches 2 run say Sentry owner list: @a[tag=owner]