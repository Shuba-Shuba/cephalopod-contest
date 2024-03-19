# calls function to add tag "owned_sentry" to all sentries built by current engineer
function battle:eng/sentry/check

# if any of your sentries have killed a player, give the engineer a kill
execute if entity @e[tag=sentry,tag=owned_sentry,scores={sentry_kill=1}] run scoreboard players add @s Kills 1
execute if entity @e[tag=sentry,tag=owned_sentry,scores={sentry_kill=1}] run scoreboard players add @s kill 1
execute if entity @e[tag=sentry,tag=owned_sentry,scores={sentry_kill=1}] run scoreboard players add @s kills 1

# reset kill score
scoreboard players set @e[tag=sentry,tag=owned_sentry,scores={sentry_kill=1}] sentry_kill 0