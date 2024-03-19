scoreboard players operation %system UUID0 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID0
scoreboard players operation %system UUID1 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID1
scoreboard players operation %system UUID2 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID2
scoreboard players operation %system UUID3 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID3
execute if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run function battle:eng/sentry/upgrade_start