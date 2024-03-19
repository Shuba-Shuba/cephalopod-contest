## prehook
# camera reset
kill @e[type=#lobster:camera,tag=camera]

# replay reset
function rep:reset
scoreboard players set %replay_players game 0

# explode losers
execute unless score %mode game matches 11 as @a[tag=!winner,tag=!ded,tag=!out] at @s run function lobster:landed_no_kb
execute if score %mode game matches 11 as @a[tag=!winner,tag=!ded,tag=!out] at @s positioned as @e[type=marker,limit=1,sort=nearest,tag=tmp_blocks_copy] run function lobster:blocks_fall
tag @a[tag=!winner,tag=!ded,tag=!out] add ded

# announce winner(s)
execute store result score %winners game if entity @a[tag=winner]
execute if score lobster.one config matches 0 if score %winners game matches 2.. run tellraw @a [{"selector":"@a[tag=winner]","color":"aqua"}," will go to the next round. Players will be teleported in 5 seconds."]
execute if score lobster.one config matches 1 if score %winners game matches 2.. run tellraw @a [{"selector":"@a[tag=winner]","color":"green"}," have won the game!"]
execute if score %winners game matches 1 run tellraw @a [{"selector":"@a[tag=winner,limit=1]","color":"green"}," has won the game!"]
# PRESIDENT'S DAY IN MAY EVENT
execute if score lobster.one config matches 0 if score %winners game matches 1 run scoreboard players add @a[tag=winner,limit=1] event_money 1
execute if score lobster.one config matches 1 if score %winners game matches 1.. run scoreboard players add @a[tag=winner] event_money 1
execute if score %winners game matches 0 run tellraw @a {"text":"You people suck. Nobody wins!!!","color":"red"}

# schedule reset
schedule clear lobster:mode/lights_out
schedule clear lobster:mode/parkour
schedule clear lobster:mode/bomb_tag
schedule clear lobster:mode/race
schedule clear lobster:mode/red_light_green_light
schedule clear lobster:mode/buttons
schedule clear lobster:mode/koth
schedule clear lobster:mode/rocks
schedule clear lobster:mode/dodgeball
schedule clear lobster:mode/nun_run
schedule clear lobster:mode/chunk
schedule clear lobster:mode/sumo
schedule clear lobster:mode/blocks
schedule clear lobster:mode/craft
schedule clear lobster:mode/gun_game
schedule clear lobster:mode/drugs
schedule clear lobster:mode/skywars
schedule clear lobster:mode/nbk
schedule clear lobster:mode/spleef
schedule clear lobster:mode/uno
schedule clear lobster:mode/admintato
schedule clear lobster:mode/talent
schedule clear lobster:mode/kitpvp
schedule clear lobster:mode/genwars
schedule clear lobster:mode/dog_fight
schedule clear lobster:mode/mini_tnt
schedule clear lobster:mode/micro_battles

## individual gamemode resets
# boss fight reset
kill @e[type=ender_dragon]
scoreboard players set @a boss_damage 0
scoreboard players set @a boss_kills 0
scoreboard players reset @a boss_points
scoreboard players set @a boss_lifetime 0

# cs reset
bossbar set lobster:time color blue
kill @e[type=tnt,tag=cs]
tag @e[type=marker,tag=cs_bomb] remove cs_bomb

# payload reset
kill @e[type=armor_stand,tag=payload]
kill @e[type=furnace_minecart,tag=payload]

# micro battles reset
kill @e[type=marker,tag=micro_edge]
kill @e[type=marker,tag=micro_lava]

# mini tnt reset
scoreboard objectives setdisplay list hp
kill @e[type=marker,tag=focus_tether]
kill @e[type=marker,tag=laser_tether]
kill @e[type=marker,tag=broken_modem_tether]
kill @e[type=skeleton,tag=dispenser]
kill @e[type=skeleton,tag=tnt_sentry]
kill @e[type=end_crystal]
tp @e[type=slime] 0 -160 0
execute in sp:void run fill 596 0 -604 640 33 -560 air
scoreboard players set @a minecart_time 0
scoreboard players set @a shift_cd 20
scoreboard players set @a gardener_jump 0
scoreboard players set @a backstab_cd 0
scoreboard players set @a bomb_level 0
scoreboard players set @a level_bomb_cd 0
scoreboard players set @a level_bomb_place 0
scoreboard players set @a laser_cd 0
scoreboard players set @a jump_cd 0

# genwars reset
execute in sp:void run fill 1230 -64 -151 1406 0 -322 air replace #lobster:placeable
execute in sp:void run fill 950 -64 -200 1050 50 -300 air replace #lobster:placeable
tag @a remove tmp_dead
scoreboard players reset @a death_time
gamerule mobGriefing false

# talent show reset
tag @a remove stage
tag @a remove stage_done
scoreboard players reset @a talent_vote
scoreboard players reset @a talent_rating

# kitpvp reset
scoreboard players reset @a Kit_ID

# admintato reset
tag @a remove hunter

# nbk reset
execute in sp:void run fill 1509 96 339 1533 71 339 minecraft:red_stained_glass
execute in sp:void run fill 1711 115 100 1711 96 74 minecraft:red_stained_glass
kill @e[type=marker,tag=jail_saver]

# pothead reset
scoreboard players set ammo_items.enabled config 0
kill @e[type=#lobster:heist,tag=heist]
kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}}]
tag @a remove cop
function lobster:open/skyscraper
function lobster:open/hotel
function lobster:open/bank
execute in sp:void run setblock 228 123 793 polished_blackstone_button[facing=north] destroy
execute in sp:void run place template minecraft:gas_station 235 121 766
execute as @e[type=marker,tag=jigsaw] at @s run function lobster:clear_building
kill @e[type=marker,tag=jigsaw_mob]
kill @e[type=marker,tag=jigsaw_tp]
kill @e[type=marker,tag=build_heist]

# craft reset
scoreboard players set @a craft 0
kill @e[type=marker,tag=craft_storage]
kill @e[type=marker,tag=shelf]
kill @e[type=villager,tag=cashier]

# blocks reset
kill @e[type=marker,tag=tmp_blocks_board]
kill @e[type=marker,tag=tmp_blocks_copy]

# sumo/skywars reset
tag @a remove skywars
tag @a remove sumo
tag @a remove on_deck
tag @a remove loser

# shard reset
execute in sp:void run forceload add 123 -438
item replace entity @e[type=glow_item_frame,tag=shard1] container.0 with air
item replace entity @e[type=glow_item_frame,tag=shard2] container.0 with air
item replace entity @e[type=glow_item_frame,tag=shard3] container.0 with air
tag @e[type=glow_item_frame] remove filled

# time reset
time set noon

# team reset
tag @a remove nun
team modify global friendlyFire true
team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false

# glass reset
execute as @e[type=marker,tag=glass_jump,tag=map1] at @s run setblock ~1 ~-1 ~ tinted_glass
execute as @e[type=marker,tag=glass_jump,tag=map1] at @s run setblock ~-1 ~-1 ~ tinted_glass
execute as @e[type=marker,tag=glass_jump,tag=map2] at @s run setblock ~ ~-1 ~1 stripped_spruce_log[axis=y]
execute as @e[type=marker,tag=glass_jump,tag=map2] at @s run setblock ~ ~-1 ~-1 stripped_spruce_log[axis=y]
execute as @e[type=marker,tag=glass_jump,tag=map3] at @s run setblock ~ ~-1 ~1 ice
execute as @e[type=marker,tag=glass_jump,tag=map3] at @s run setblock ~ ~-1 ~-1 ice
kill @e[type=marker,tag=tmp_glass]

# rocks reset
kill @e[type=marker,tag=breaking]
kill @e[type=marker,tag=tmp_rock]
execute as @e[type=marker,tag=platform,tag=map1] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 netherrack
execute as @e[type=marker,tag=platform,tag=map2] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 snow_block
scoreboard players reset #players_check game

# bomb reset
scoreboard players set %bomb game 0
tag @a remove bomb
clear @a[tag=!out]

# arena reset
execute in sp:void run place template minecraft:arena 939 135 667

## posthook
# end game or start next round
gamerule fallDamage true
effect clear @a[tag=!out]
scoreboard objectives setdisplay sidebar
tag @a remove safe
title @a[tag=!out] reset
scoreboard players set @a[tag=!out] offhand_carrot 0
scoreboard players set @a deaths 0
scoreboard players set %team game 0
scoreboard players operation %prev_mode game = %mode game
scoreboard players reset #end_schedule game
execute if score %mode game matches 9..10 run scoreboard players set #end_schedule game 2
execute if score %mode game matches 11 run scoreboard players set #end_schedule game 1
execute if score %mode game matches 12..25 run scoreboard players set #end_schedule game 2
execute if score %mode game matches 26..27 run scoreboard players set #end_schedule game 1
scoreboard players set %camera game -1
scoreboard players set %camera1 game -1
scoreboard players set %camera2 game -1
scoreboard players set %mode game -1
execute if score lobster.one config matches 0 unless score #end_schedule game matches 1.. if score %winners game matches 0..1 in sp:void run function lobster:end_screen
execute if score lobster.one config matches 0 if score #end_schedule game matches 1 if score %winners game matches 0..1 run schedule function lobster:end_screen_schedule 5s
execute if score lobster.one config matches 0 if score #end_schedule game matches 2 if score %winners game matches 0..1 in sp:void run tp @a[tag=!out] 0 200 0
execute if score lobster.one config matches 0 if score #end_schedule game matches 2 if score %winners game matches 0..1 run schedule function lobster:end_screen_schedule 0.5s
execute if score lobster.one config matches 0 if score %winners game matches 2.. run schedule function lobster:next_round 5s
execute if score lobster.one config matches 1 unless score #end_schedule game matches 1.. in sp:void run function lobster:end_screen
execute if score lobster.one config matches 1 if score #end_schedule game matches 1 run schedule function lobster:end_screen_schedule 5s
execute if score lobster.one config matches 1 if score #end_schedule game matches 2 in sp:void run tp @a[tag=!out] 0 200 0
execute if score lobster.one config matches 1 if score #end_schedule game matches 2 run schedule function lobster:end_screen_schedule 0.5s