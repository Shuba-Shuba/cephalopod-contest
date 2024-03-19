# always run
execute positioned ~ ~-1.5 ~ unless entity @a[tag=this,distance=..1] run particle dust 1 1 1 1 ~ ~1.5 ~ 0 0 0 0 1 force @a
scoreboard players remove .r raycast 1

# block checks
execute if block ~ ~ ~ #shb:partial run function shb:raycast/partial
execute unless score #bool raycast matches 1 if score .r raycast matches 1.. if block ~ ~ ~ #shb:air positioned ^ ^ ^0.25 run function shb:raycast/loop_laser