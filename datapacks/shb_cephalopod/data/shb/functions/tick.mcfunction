## guns
execute as @a at @s run function shb:tick_player

## config integrity
execute if score auto_reload.enabled config matches 1.. run scoreboard players set auto_reload.enabled config 1
execute if score auto_reload.enabled config matches ..0 run scoreboard players set auto_reload.enabled config 0
execute if score ammo_items.enabled config matches 1.. run scoreboard players set ammo_items.enabled config 1
execute if score ammo_items.enabled config matches ..0 run scoreboard players set ammo_items.enabled config 0
execute if score dmg_indicators.enabled config matches 1.. run scoreboard players set dmg_indicators.enabled config 1
execute if score dmg_indicators.enabled config matches ..0 run scoreboard players set dmg_indicators.enabled config 0
#execute if score .minimum_damage config matches ..-1 run scoreboard players set .minimum_damage config 0
execute if score .headshot_multiplier*100 config matches ..99 run scoreboard players set .headshot_multiplier*100 config 100
execute if score .i_ticks config matches ..-1 run scoreboard players set .i_ticks config 0
#execute if score .i_ticks config matches 0..9 unless score dmg_stacking.enabled config matches 1 run tellraw @a ["[NOTICE]: ",{"text":"Damage stacking","underlined":true,"hoverEvent":{"action":"show_text","value":"If damage stacking is disabled, when damage is dealt, all damage taken for the next 10 ticks is discarded. This is how vanilla handles damage. Disabled when i-ticks are 10+.\n\nIf damage stacking is enabled, when damage is dealt, all damage taken for the next 10 ticks is stacked up and applied all at once after the 10 ticks end. Enabled when i-ticks are <10."}}," has been automatically enabled because i-ticks were set below 10. Do not change this setting manually."]
#execute if score .i_ticks config matches 0..9 unless score dmg_stacking.enabled config matches 1 run scoreboard players set dmg_stacking.enabled config 1
#execute if score .i_ticks config matches 10.. unless score dmg_stacking.enabled config matches 0 run tellraw @a ["[NOTICE]: ",{"text":"Damage stacking","underlined":true,"hoverEvent":{"action":"show_text","value":"If damage stacking is disabled, when damage is dealt, all damage taken for the next 10 ticks is discarded. This is how vanilla handles damage. Disabled when i-ticks are 10+.\n\nIf damage stacking is enabled, when damage is dealt, all damage taken for the next 10 ticks is stacked up and applied all at once after the 10 ticks end. Enabled when i-ticks are <10."}}," has been automatically disabled because i-ticks were set to 10 or above. Do not change this setting manually."]
#execute if score .i_ticks config matches 10.. unless score dmg_stacking.enabled config matches 0 run scoreboard players set dmg_stacking.enabled config 0

## custom projectiles
execute as @e[type=snowball,tag=!dodge,nbt={Item:{tag:{dodge:1b}}}] at @s run function shb:found_dodge
kill @e[type=arrow,nbt={inGround:1b},tag=brick]
kill @e[type=snowball,tag=brick,predicate=!cc:is_riding_ender_arrow]
execute as @e[type=snowball,tag=!brick,nbt={Item:{tag:{brick:1b}}}] at @s run function shb:found_brick
execute as @e[type=snowball,tag=!shb,nbt={Item:{tag:{shb:1b}}}] at @s run function shb:found_snowball
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
execute as @a unless score @s join matches 0 run function shb:join

# entity UUIDs
execute as @e[type=!player,tag=!uuid_verified] run function shb:uuid

# players
#execute as @a[scores={return=1}] run function shb:dmg/return_health
#execute as @a[gamemode=!creative,gamemode=!spectator,scores={hp_dmg=1..,stack=0}] run function shb:dmg/deal_damage

# non-player entities
#execute as @e[type=!player,scores={hp_dmg=1..,stack=0}] run function shb:dmg/deal_damage_entity

# timers
scoreboard players remove @e[scores={hit=1..}] hit 1
scoreboard players add @e hit 0
#scoreboard players remove @a[scores={return=1..}] return 1
#scoreboard players add @a return 0
#scoreboard players remove @e[scores={stack=1..}] stack 1
#scoreboard players add @e stack 0

# damage indicators
execute as @e[type=item,tag=dmg] run function shb:vis_fix
execute as @e[type=item,tag=dmg] at @s if block ~ ~-1 ~ hopper run kill @s
execute as @e[type=item,tag=dmg] at @s if entity @e[type=hopper_minecart,distance=..4] run kill @s