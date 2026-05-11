# always run
execute positioned ~ ~-1.5 ~ unless entity @a[tag=this,distance=..1] run particle lava ~ ~1 ~ 0 0 0 0 1 normal @a
scoreboard players remove .r raycast 1

# place fire
execute positioned ~ ~-0.25 ~ unless entity @a[tag=user,distance=..2] run function battle:pyro/fire/place

# entity checks
execute positioned ~-0.075 ~-0.075 ~-0.075 as @e[tag=!this,dx=0,type=!#shb:protect] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function shb:raycast/hit

# block checks
execute if block ~ ~ ~ #shb:partial run function shb:raycast/partial
execute unless score #bool raycast matches 1 if score .r raycast matches 1.. if block ~ ~ ~ #shb:air positioned ^ ^ ^0.25 run function shb:raycast/loop_fire