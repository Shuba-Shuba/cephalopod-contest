## guns
execute as @a at @s run function shb:tick_player

## config integrity
execute if score auto_reload.enabled config matches 1.. run scoreboard players set auto_reload.enabled config 1
execute if score auto_reload.enabled config matches ..0 run scoreboard players set auto_reload.enabled config 0
execute if score ammo_items.enabled config matches 1.. run scoreboard players set ammo_items.enabled config 1
execute if score ammo_items.enabled config matches ..0 run scoreboard players set ammo_items.enabled config 0
execute if score dmg_indicators.enabled config matches 1.. run scoreboard players set dmg_indicators.enabled config 1
execute if score dmg_indicators.enabled config matches ..0 run scoreboard players set dmg_indicators.enabled config 0
execute if score .headshot_multiplier*100 config matches ..99 run scoreboard players set .headshot_multiplier*100 config 100
execute if score .i_ticks config matches ..-1 run scoreboard players set .i_ticks config 0

## custom projectiles
execute as @e[type=snowball,tag=!dodge,nbt={Item:{components:{"minecraft:custom_data":{dodge:1b}}}}] at @s run function shb:found_dodge
kill @e[type=arrow,nbt={inGround:1b},tag=brick]
kill @e[type=snowball,tag=brick,predicate=!cc:is_riding_ender_arrow]
execute as @e[type=snowball,tag=!brick,nbt={Item:{components:{"minecraft:custom_data":{brick:1b}}}}] at @s run function shb:found_brick
execute as @e[type=snowball,tag=!shb,nbt={Item:{components:{"minecraft:custom_data":{shb:1b}}}}] at @s run function shb:found_snowball
execute as @e[type=marker,tag=dodge] unless predicate shb:is_riding_dodgeball at @s run function cc:dodgeball_landed
execute as @e[type=marker,tag=shb] unless predicate shb:is_riding_snowball at @s run function shb:explode
execute as @e[type=snowball,tag=shb] run function shb:vis_fix
execute as @e[type=tnt_minecart,tag=shb] run function shb:vis_fix
execute as @e[type=arrow,tag=dodge] run function shb:vis_fix
execute as @e[type=arrow,tag=brick] run function shb:vis_fix
execute as @e[type=snowball,tag=brick] run function shb:vis_fix
execute as @e[type=#cc:broken_modem_stops,tag=broken_modem_stopped] run function shb:vis_fix
execute at @e[type=snowball,tag=shb] run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 normal @a
scoreboard players operation .global visfix *= .-1 visfix

## custom damage
# join game
execute as @a unless score @s join matches 0 in cc:void run function shb:join

# timers
scoreboard players remove @e[scores={hit=1..}] hit 1
scoreboard players add @e hit 0