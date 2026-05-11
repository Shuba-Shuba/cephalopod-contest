# setup
scoreboard players set @s shoot_sentry_cd 20
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 2
tag @s add this
summon marker ~ ~ ~ {Tags:["tmp_raycast"]}

# draw hitscan line
# range = .r * 0.25 blocks
scoreboard players set .r raycast 28
scoreboard players set #bool raycast 0
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=tmp_raycast] run function shb:raycast/loop_sentry

# cleanup
kill @e[type=marker,tag=tmp_raycast]
tag @s remove this