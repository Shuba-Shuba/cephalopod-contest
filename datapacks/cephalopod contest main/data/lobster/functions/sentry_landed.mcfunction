tag @s add grounded
data merge entity @s {NoAI:1b}

execute at @s if block ~ ~ ~ lava run function lobster:sentry_lava