# reset join score
scoreboard players set @s join 0

# remove your sentries
function battle:eng/sentry/check
kill @e[tag=owned_sentry]
tag @e remove owned_sentry