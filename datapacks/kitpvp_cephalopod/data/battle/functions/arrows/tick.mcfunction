# custom arrow detection
#execute as @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:water_breathing"}],inGround:1b}] run function battle:arrows/directory
#execute as @e[type=!arrow,nbt={active_effects:[{id:"minecraft:water_breathing"}]}] run function battle:arrows/directory
scoreboard players remove @e[scores={freezetime=1..},type=marker,tag=freezer] freezetime 1
execute as @e[scores={freezetime=0},type=marker,tag=freezer] at @s run function battle:arrows/unfreeze
#execute as @a[tag=!uuid] run function battle:arrows/uuid
execute as @e[type=arrow,tag=!revolver,nbt={custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:29b}]}] run function battle:arrows/revolver_init
execute as @e[type=arrow,tag=!revolver,nbt={custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:28b}]}] run function battle:arrows/revolver_init_big
scoreboard players remove @a[scores={tp_cd=1..}] tp_cd 1

# the tomb doe
#scoreboard players add %door tombtime 1
#execute if score %door tombtime matches 1200 run fill 85 25 -203 86 25 -202 red_sandstone
#execute if score %door tombtime matches 2400 run fill 85 25 -203 86 25 -202 air
#execute if score %door tombtime matches 2400 run scoreboard players set %door tombtime 0

# /spawn
#scoreboard players add @a health+3 0
#execute as @a run scoreboard players operation @s health+3 = @s health
#execute as @a run scoreboard players add @s health+3 3
#scoreboard players enable @a GoToSpawn
#tp @a[scores={GoToSpawn=1..}] 87 23 -76 -90 0
#effect clear @a[scores={GoToSpawn=1..}]
#execute as @a[scores={GoToSpawn=1..}] if score @s health+3 < @s max_hp run kill @s
#scoreboard players set @a GoToSpawn 0

# lobby
#scoreboard players enable @a NightVision
execute as @a store result score @s max_hp run attribute @s minecraft:generic.max_health get
#tag @a remove lobby
#tag @a[x=21,y=22,z=38,dx=10,dy=4,dz=26] add lobby
#tag @a[x=84,y=21,z=-80,dx=10,dy=5,dz=10] add lobby
#effect give @a[tag=lobby] minecraft:resistance 3 255 true
#effect give @a[tag=lobby] minecraft:weakness 3 255 true
#effect give @a[tag=lobby] minecraft:saturation 3 255 true
#gamemode adventure @a[gamemode=survival]
#execute as @a unless score @s Kit_ID matches 2..3 unless score @s Kit_ID matches 15 unless score @s Kit_ID matches 25 run clear @s trident
execute if score %in game matches 1 if score %mode game matches 21 run clear @a glass_bottle
#execute as @a run attribute @s minecraft:generic.attack_speed base set 69
#scoreboard players add @a kit_cooldown 0
#execute as @a if score @s kit_cooldown matches 1.. run scoreboard players remove @s kit_cooldown 1
#spawnpoint @a 87 23 -76 0.0
execute if score %in game matches 1 if score %mode game matches 21 as @a at @s if block ~ ~-1 ~ minecraft:chiseled_quartz_block run effect give @s minecraft:levitation 5 1 true
execute if score %in game matches 1 if score %mode game matches 26 as @a at @s if block ~ ~-1 ~ minecraft:chiseled_quartz_block run effect give @s minecraft:levitation 5 1 true
execute if score %in game matches 1 if score %mode game matches 21 as @a at @s if block ~ ~-1 ~ minecraft:tnt run function battle:pyro/launch_no_cd
#execute as @a[gamemode=adventure] at @s if block ~ ~-0.75 ~ barrier unless score @s gravity matches 1 unless score @s barrier_bounce matches 1 run kill @s
execute as @a[scores={axe_break=1..,Kit_ID=4}] run advancement grant @s only battle:lumberjack
execute as @a[scores={axe_break=1..}] run scoreboard players set @s axe_break 0
execute as @a[scores={shield_break=1..}] run advancement grant @s only battle:shield
execute as @a[scores={shield_break=1..}] run scoreboard players set @s shield_break 0

# big absorption gapple
execute as @a[scores={gapple=1..,Kit_ID=14}] at @s run function battle:arrows/gapple

# freezetime thing
scoreboard players add @a freezetime 0

# ender arrow
#execute if score %mode game matches 21 run gamemode adventure @a[gamemode=spectator,predicate=!cc:is_riding_ender_arrow]
execute as @e[type=arrow,nbt={inGround:0b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}] at @s on origin unless predicate cc:is_riding_ender_arrow run tp @s ~ ~ ~
execute as @e[type=arrow,nbt={inGround:0b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}] at @s on origin unless predicate cc:is_riding_ender_arrow run ride @s mount @e[type=arrow,limit=1,sort=nearest]
execute as @e[type=arrow,nbt={inGround:0b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}] on origin run gamemode spectator @s[predicate=cc:is_riding_ender_arrow]
execute as @e[type=arrow,nbt={inGround:0b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}] on origin run tag @s add ender_tp
execute if score %mode game matches 21 run gamemode adventure @a[gamemode=spectator,tag=!ded,tag=!out,tag=!ender_tp]
tag @a remove ender_tp

# arrow reload
scoreboard players add @a[scores={max_arrow_time=1..}] arrow_time 1
execute as @a[scores={max_arrow_time=1..}] if score @s arrow_time >= @s max_arrow_time run function battle:arrows/reload
execute as @a[scores={Kit_ID=20,shoot_crossbow=6..,cowboy_mode=1}] at @s run function battle:arrows/revolver_big_reload
execute as @a[scores={Kit_ID=20,shoot_crossbow=1..,cowboy_mode=3}] at @s run function battle:arrows/revolver_small_reload
scoreboard players add @a[scores={Kit_ID=20,cowboy_mode=2}] arrow_time 1
scoreboard players add @a[scores={Kit_ID=20,cowboy_mode=4}] arrow_time 1
execute as @a[scores={Kit_ID=20,arrow_time=60..}] at @s run function battle:arrows/revolver_give

# potion reload
execute as @a[scores={Kit_ID=11},gamemode=adventure] at @s run function battle:pots/legal
execute as @a[scores={Kit_ID=22},gamemode=adventure] at @s run function battle:pots/spy
execute as @a[scores={Kit_ID=26},gamemode=adventure] at @s run function battle:pots/pyro