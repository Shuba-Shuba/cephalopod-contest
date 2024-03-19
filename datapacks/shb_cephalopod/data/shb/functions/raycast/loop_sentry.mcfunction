# always run
particle crit ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players remove .r raycast 1

# entity checks
execute positioned ~-0.075 ~-0.075 ~-0.075 as @a[tag=!out,tag=!ded,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function mini:sentry_hit

# block checks
execute if block ~ ~ ~ #shb:partial run function shb:raycast/partial
execute unless score #bool raycast matches 1 if score .r raycast matches 1.. if block ~ ~ ~ #shb:air positioned ^ ^ ^0.25 run function shb:raycast/loop_sentry
execute unless block ~ ~ ~ #shb:air run setblock ~ ~ ~ air destroy
execute if score #bool raycast matches 1 run setblock ~ ~ ~ air destroy