# gamerules
execute unless score %mode game matches 420 as @a run attribute @s minecraft:generic.attack_speed base set 69
execute unless score %mode game matches 420 unless score %mode game matches 15 unless score %mode game matches 25 unless score %mode game matches 28 run gamemode adventure @a[gamemode=survival,tag=!out]
execute unless score %mode game matches 420 unless score %mode game matches 21 unless score %mode game matches 25 unless score %mode game matches 26 unless score %mode game matches 28 run effect give @a saturation infinite 255 true
execute unless score %mode game matches 420 unless score %mode game matches 12 unless score %mode game matches 25 unless score %mode game matches 28 run gamerule doTileDrops false
execute if score %mode game matches 12 run gamerule doTileDrops true
execute if score %mode game matches 25 run gamerule doTileDrops true
execute if score %mode game matches 28 run gamerule doTileDrops true
execute if score %mode game matches 420 run gamerule doTileDrops true
execute unless score %mode game matches 420 run gamerule doMobSpawning false
execute if score %mode game matches 420 run gamerule doMobSpawning true
# PRES. DAY GAMERULE KEEPINVENTORY FALSE WHEN LOBBY
execute unless score %mode game matches 420 unless score %in game matches 0 run gamerule keepInventory true
execute if score %mode game matches 420 run gamerule keepInventory false
execute if score %in game matches 0 run gamerule keepInventory false
execute unless score %mode game matches 13..15 unless score %mode game matches 0 unless score %mode game matches 9 unless score %mode game matches 27 run gamerule naturalRegeneration true
execute if score %mode game matches 13..15 run gamerule naturalRegeneration false
execute if score %mode game matches 0 run gamerule naturalRegeneration false
execute if score %mode game matches 9 run gamerule naturalRegeneration false
execute if score %mode game matches 27 run gamerule naturalRegeneration false
execute unless score %mode game matches 14 run scoreboard players set auto_reload.enabled config 1
execute if score %mode game matches 14 run scoreboard players set auto_reload.enabled config 0
execute unless score %mode game matches 14 run team modify red friendlyFire false
execute if score %mode game matches 14 run team modify red friendlyFire true
execute unless score %mode game matches 14 run team modify blue friendlyFire false
execute if score %mode game matches 14 run team modify blue friendlyFire true
execute unless score %mode game matches 13 unless score %mode game matches 21 unless score %mode game matches 26 unless score %mode game matches 27 unless score %mode game matches 420 run gamerule showDeathMessages false
execute unless score #exploding stats matches 1 if score %mode game matches 13 run gamerule showDeathMessages true
execute unless score #exploding stats matches 1 if score %mode game matches 21 run gamerule showDeathMessages true
execute unless score #exploding stats matches 1 if score %mode game matches 26 run gamerule showDeathMessages true
execute unless score #exploding stats matches 1 if score %mode game matches 27 run gamerule showDeathMessages true
execute unless score #exploding stats matches 1 if score %mode game matches 420 run gamerule showDeathMessages true
execute if score %mode game matches 24 run team modify global collisionRule never
execute if score .boss_setup game matches 1 run team modify global collisionRule never
execute unless score %mode game matches 24 unless score .boss_setup game matches 1 run team modify global collisionRule always

# stuff
kill @e[type=axolotl]
scoreboard players enable @a night_vision
scoreboard players add @a night_vision 0
effect give @a[scores={night_toggle=1}] night_vision infinite 0 true
effect clear @a[scores={night_toggle=0}] night_vision
execute as @a[scores={night_vision=1..}] run function cc:night_toggle
execute in cc:void run spawnpoint @a 0 69 0
#execute in cc:void run spawnpoint @a -254 70 -618
execute unless score %team game matches 1 run team join global @a[tag=!out,team=!global]
#execute if score %in game matches 0 run effect give @a regeneration 1 255 true

# custom arrows (imported from RPG)
execute as @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:water_breathing"}],inGround:1b}] run function cc:directory
execute as @e[type=!arrow,nbt={active_effects:[{id:"minecraft:water_breathing"}]}] run function cc:directory

# cameras
execute unless score cameras.enabled config matches 1 run scoreboard players set %camera game -1
execute unless score cameras.enabled config matches 1 run scoreboard players set %camera1 game -1
execute unless score cameras.enabled config matches 1 run scoreboard players set %camera2 game -1
execute if score %in game matches 1 if score cameras.enabled config matches 1 in cc:void run function cc:camera

# gameticks
execute if score %mode game matches -2 run function cc:end_animate
execute if score %in game matches 1 if score %mode game matches -1 as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier run function cc:landed_no_kb
execute if score %in game matches 1 if score %mode game matches -1 run effect give @a resistance 1 255 true
execute if score %in game matches 1 if score %mode game matches 0 in cc:void run function cc:gametick/lights_out
execute if score %in game matches 1 if score %mode game matches 1 in cc:void run function cc:gametick/parkour
execute if score %in game matches 1 if score %mode game matches 2 in cc:void run function cc:gametick/bomb_tag
execute if score %in game matches 1 if score %mode game matches 3 in cc:void run function cc:gametick/race
execute if score %in game matches 1 if score %mode game matches 4 in cc:void run function cc:gametick/red_light_green_light
execute if score %in game matches 1 if score %mode game matches 5 in cc:void run function cc:gametick/buttons
execute if score %in game matches 1 if score %mode game matches 6 in cc:void run function cc:gametick/koth
execute if score %in game matches 1 if score %mode game matches 7 in cc:void run function cc:gametick/rocks
execute if score %in game matches 1 if score %mode game matches 8 in cc:void run function cc:gametick/dodgeball
execute if score %in game matches 1 if score %mode game matches 9 in cc:void run function cc:gametick/nun_run
execute if score %in game matches 1 if score %mode game matches 10 in cc:void run function cc:gametick/sumo
execute if score %in game matches 1 if score %mode game matches 11 in cc:void run function cc:gametick/blocks
execute if score %in game matches 1 if score %mode game matches 12 in cc:void run function cc:gametick/craft
execute if score %in game matches 1 if score %mode game matches 13 in cc:void run function cc:gametick/gun_game
execute if score %in game matches 1 if score %mode game matches 14 in cc:void run function cc:gametick/drugs
execute if score %in game matches 1 if score %mode game matches 15 in cc:void run function cc:gametick/skywars
execute if score %in game matches 1 if score %mode game matches 16 in cc:void run function cc:gametick/nbk
execute if score %in game matches 1 if score %mode game matches 17 in cc:void run function cc:gametick/spleef
execute if score %in game matches 1 if score %mode game matches 18 in cc:void run function cc:gametick/uno
execute if score %in game matches 1 if score %mode game matches 19 in cc:void run function cc:gametick/admintato
execute if score %in game matches 1 if score %mode game matches 20 in cc:void run function cc:gametick/talent
execute if score %in game matches 1 if score %mode game matches 21 in cc:void run function cc:gametick/kitpvp
execute if score %in game matches 1 if score %mode game matches 22 in cc:void run function cc:gametick/genwars
execute if score %in game matches 1 if score %mode game matches 23 in cc:void run function cc:gametick/dog_fight
execute if score %in game matches 1 if score %mode game matches 24 in cc:void run function cc:gametick/mini_tnt
execute if score %in game matches 1 if score %mode game matches 25 in cc:void run function cc:gametick/micro_battles
execute if score %in game matches 1 if score %mode game matches 26 in cc:void run function cc:gametick/payload
execute if score %in game matches 1 if score %mode game matches 27 in cc:void run function cc:gametick/cs
execute if score %in game matches 1 if score %mode game matches 28 in minecraft:the_end run function cc:gametick/boss_fight
execute if score %in game matches 1 if score %mode game matches 29 in cc:void run function cc:gametick/disco
execute if score %in game matches 1 if score %mode game matches 69 in cc:void run function cc:gametick/shard_room
execute if score %in game matches 1 if score %mode game matches 420 in cc:void run function cc:gametick/chunk

# antipenis
execute if entity @e[type=command_block_minecart] run tellraw @a "[antipenis] arlo stop spawning command block minecarts you dumbfuck"
execute if entity @e[type=command_block_minecart] run scoreboard players add %antipenis game 1
#execute if score %antipenis game matches 1000 as betaRadiation run function cc:gbj
#execute if score %antipenis game matches 1000 as betaRadiation run scoreboard players add %antipenis game 1
kill @e[type=command_block_minecart]

# tether
#execute as @e[tag=gravity,type=armor_stand] at @s run function cc:gravity/victim
#execute as @a[scores={gravity=1}] at @s run function cc:gravity/tether
#execute if score %mode game matches 8 run effect clear @a[scores={gravity=0}] levitation

# gun game portals
effect give @a[predicate=cc:portal1] blindness 2 0 true
effect give @a[predicate=cc:portal2] blindness 2 0 true
effect give @a[predicate=cc:portal3] blindness 2 0 true
effect give @a[predicate=cc:portal3] resistance 2 255 true
execute store result score #advancement game run gamerule announceAdvancements
gamerule announceAdvancements true
advancement grant @a[predicate=cc:portal1_trigger] only cc:portal
advancement grant @a[predicate=cc:portal2_trigger] only cc:portal
execute if score #advancement game matches 0 run gamerule announceAdvancements false
execute as @a[predicate=cc:portal1_trigger] at @s run tp @s ~-51 ~ ~-33
execute as @a[predicate=cc:portal2_trigger] at @s run tp @s ~51 ~ ~33
execute as @a[predicate=cc:portal3_trigger] at @s run tp @s ~ ~71 ~
execute as @a[predicate=cc:ufo_beam0] at @s run tp @s ~-50 ~ ~
execute as @a[predicate=cc:ufo_beam1] at @s run tp @s ~ ~5 ~-50
execute unless score %mode game matches 14 as @a[predicate=cc:elevator_skyscraper3] at @s run tp ~-69 ~-22 ~8

# timer configs
scoreboard players enable @a reset_times
scoreboard players enable @a lights_out_time
scoreboard players enable @a glass_jumps_time
scoreboard players enable @a bomb_tag_time
scoreboard players enable @a race_time
scoreboard players enable @a rlgl_time
scoreboard players enable @a buttons_time
scoreboard players enable @a koth_time
scoreboard players enable @a dodgeball_time
scoreboard players enable @a nun_run_time
scoreboard players enable @a chunk_time
scoreboard players enable @a blocks_time
scoreboard players enable @a sumo_time
scoreboard players enable @a skywars_time
scoreboard players enable @a sumo_hazards
scoreboard players enable @a admintato_time
scoreboard players enable @a talent_time
scoreboard players enable @a kitpvp_time
scoreboard players enable @a dog_fight_time
scoreboard players enable @a respawn_time
scoreboard players enable @a payload_time
scoreboard players enable @a payload_respawn_time
scoreboard players enable @a payload_setup_time
scoreboard players enable @a cs_time
scoreboard players enable @a cs_setup_time
scoreboard players enable @a cs_bomb_time
execute as @a[scores={reset_times=1..}] run function cc:ui/reset_times
execute as @a[scores={lights_out_time=1..}] run scoreboard players operation time.lights_out config = @s lights_out_time
execute as @a[scores={glass_jumps_time=1..}] run scoreboard players operation time.glass_jumps config = @s glass_jumps_time
execute as @a[scores={bomb_tag_time=1..}] run scoreboard players operation time.bomb_tag config = @s bomb_tag_time
execute as @a[scores={race_time=1..}] run scoreboard players operation time.race config = @s race_time
execute as @a[scores={rlgl_time=1..}] run scoreboard players operation time.rlgl config = @s rlgl_time
execute as @a[scores={buttons_time=1..}] run scoreboard players operation time.buttons config = @s buttons_time
execute as @a[scores={koth_time=1..}] run scoreboard players operation time.koth config = @s koth_time
execute as @a[scores={dodgeball_time=1..}] run scoreboard players operation time.dodgeball config = @s dodgeball_time
execute as @a[scores={nun_run_time=1..}] run scoreboard players operation time.nun_run config = @s nun_run_time
execute as @a[scores={chunk_time=1..}] run scoreboard players operation time.chunk config = @s chunk_time
execute as @a[scores={blocks_time=1..}] run scoreboard players operation time.blocks config = @s blocks_time
execute as @a[scores={sumo_time=1..}] run scoreboard players operation time.sumo config = @s sumo_time
execute as @a[scores={skywars_time=1..}] run scoreboard players operation time.skywars config = @s skywars_time
execute as @a[scores={sumo_hazards=0..1}] run scoreboard players operation sumo_hazards.enabled config = @s sumo_hazards
execute as @a[scores={admintato_time=1..}] run scoreboard players operation time.admintato config = @s admintato_time
execute as @a[scores={talent_time=1..}] run scoreboard players operation time.talent config = @s talent_time
execute as @a[scores={kitpvp_time=1..}] run scoreboard players operation time.kitpvp config = @s kitpvp_time
execute as @a[scores={dog_fight_time=1..}] run scoreboard players operation time.dog_fight config = @s dog_fight_time
execute as @a[scores={respawn_time=1..}] run scoreboard players operation time.genwars_respawn config = @s respawn_time
execute as @a[scores={payload_time=1..}] run scoreboard players operation time.payload config = @s payload_time
execute as @a[scores={payload_respawn_time=1..}] run scoreboard players operation time.payload_respawn config = @s payload_respawn_time
execute as @a[scores={payload_setup_time=1..}] run scoreboard players operation time.payload_setup config = @s payload_setup_time
execute as @a[scores={cs_time=1..}] run scoreboard players operation time.cs config = @s cs_time
execute as @a[scores={cs_setup_time=1..}] run scoreboard players operation time.cs_setup config = @s cs_setup_time
execute as @a[scores={cs_bomb_time=1..}] run scoreboard players operation time.cs_bomb config = @s cs_bomb_time
scoreboard players set @a lights_out_time 0
scoreboard players set @a glass_jumps_time 0
scoreboard players set @a bomb_tag_time 0
scoreboard players set @a race_time 0
scoreboard players set @a rlgl_time 0
scoreboard players set @a buttons_time 0
scoreboard players set @a koth_time 0
scoreboard players set @a dodgeball_time 0
scoreboard players set @a nun_run_time 0
scoreboard players set @a chunk_time 0
scoreboard players set @a blocks_time 0
scoreboard players set @a sumo_time 0
scoreboard players set @a skywars_time 0
scoreboard players set @a sumo_hazards -1
scoreboard players set @a admintato_time 0
scoreboard players set @a talent_time 0
scoreboard players set @a kitpvp_time 0
scoreboard players set @a dog_fight_time 0
scoreboard players set @a respawn_time 0
scoreboard players set @a payload_time 0
scoreboard players set @a payload_respawn_time 0
scoreboard players set @a payload_setup_time 0
scoreboard players set @a cs_time 0
scoreboard players set @a cs_setup_time 0
scoreboard players set @a cs_bomb_time 0
scoreboard players enable @a mini_tnt_class

# evoker weapon
execute as @a[scores={evoker_click=1..},nbt={SelectedItem:{tag:{evoker:1b}}}] at @s run function cc:evoker
scoreboard players set @a evoker_click 0
scoreboard players remove @a[scores={evoker_cd=1..}] evoker_cd 1

# throwable fireball
execute as @a[scores={fireball_click=1..},nbt={SelectedItem:{tag:{CustomModelData:200}}}] at @s run function cc:fireball
scoreboard players set @a fireball_click 0
execute as @e[type=fireball,tag=fireball,tag=save] run function cc:motion_fix
scoreboard players add @e[type=fireball,tag=fireball,tag=save] life 1
kill @e[type=fireball,tag=fireball,tag=save,scores={life=300..}]
execute as @e[type=marker,tag=fireball,predicate=!cc:is_riding_fireball] at @s run function cc:fireball_hit

# constant velocity arrows
execute as @e[type=arrow,tag=save] run function cc:motion_fix
execute as @e[type=arrow,tag=save] run function shb:vis_fix

# spin genwars generators
scoreboard players add %spin_generator game 1
execute if score %spin_generator game matches 60.. run scoreboard players set %spin_generator game 0
execute if score %spin_generator game matches 0 as @e[type=minecraft:block_display,tag=spin] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{right_rotation:{angle:0f,axis:[0.57735027f,0.57735027f,0.57735027f]}}}
execute if score %spin_generator game matches 20 as @e[type=minecraft:block_display,tag=spin] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{right_rotation:{angle:2.0943951024f,axis:[0.57735027f,0.57735027f,0.57735027f]}}}
execute if score %spin_generator game matches 40 as @e[type=minecraft:block_display,tag=spin] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{right_rotation:{angle:4.1887902048f,axis:[0.57735027f,0.57735027f,0.57735027f]}}}

# auto respawn dummies
execute if score autospawn.enabled config matches 1 unless entity Steve positioned 0 69 0 in cc:void as Shuba_Shuba run function cc:carpet_player_spawn
execute if score autospawn.enabled config matches 1 unless entity Steve1 positioned 0 69 0 in cc:void as Shuba_Shuba run function cc:carpet_player_spawn
execute if score autospawn.enabled config matches 1 unless entity Steve2 positioned 0 69 0 in cc:void as Shuba_Shuba run function cc:carpet_player_spawn
execute if score autospawn.enabled config matches 1 unless entity steve3 positioned 0 69 0 in cc:void as Shuba_Shuba run function cc:carpet_player_spawn