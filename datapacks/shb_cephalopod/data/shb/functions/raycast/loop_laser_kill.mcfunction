# always run
execute positioned ~ ~-1.5 ~ unless entity @a[tag=this,distance=..1] run particle dust{color:[1,0,0],scale:1} ~ ~1.5 ~ 0 0 0 1 1 force @a
execute positioned ~ ~-1.5 ~ unless entity @a[tag=this,distance=..1] run particle block{block_state:"redstone_block"} ~ ~1.5 ~ 0 0 0 1 2 normal @a
#execute positioned ~ ~-1.5 ~ unless entity @a[tag=this,distance=..1] run particle minecraft:flame ~ ~1.5 ~ 0 0 0 0.1 1 normal @a
scoreboard players remove .r raycast 1

# entity checks
execute as @a[tag=!out,tag=!ded,tag=!this,tag=!hit,dx=0] at @s run function cc:hit_by_laser
#execute as @e[tag=!this,dx=0,type=!#shb:protect,type=!player] run function cc:landed_no_kb
#tag @e[tag=!this,dx=0,type=!#shb:protect] add hit

# block checks
execute if block ~ ~ ~ #shb:partial run function shb:raycast/partial
execute unless score #bool raycast matches 1 if score .r raycast matches 1.. if block ~ ~ ~ #shb:air positioned ^ ^ ^0.25 run function shb:raycast/loop_laser_kill