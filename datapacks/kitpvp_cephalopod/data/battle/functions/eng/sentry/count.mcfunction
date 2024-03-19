scoreboard players operation %system UUID0 = @s builderUUID0
scoreboard players operation %system UUID1 = @s builderUUID1
scoreboard players operation %system UUID2 = @s builderUUID2
scoreboard players operation %system UUID3 = @s builderUUID3
execute if score @p UUID0 = %system UUID0 if score @p UUID1 = %system UUID1 if score @p UUID2 = %system UUID2 if score @p UUID3 = %system UUID3 run scoreboard players remove @p sentry_count 1
kill @s