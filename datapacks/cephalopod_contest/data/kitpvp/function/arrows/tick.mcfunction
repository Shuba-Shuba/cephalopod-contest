# custom arrow detection
scoreboard players remove @e[scores={freezetime=1..},type=marker,tag=freezer] freezetime 1
execute as @e[scores={freezetime=0},type=marker,tag=freezer] at @s run function kitpvp:arrows/unfreeze
execute as @e[type=arrow,tag=!revolver,nbt={item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:29b}]}}}}] run function kitpvp:arrows/revolver_init
execute as @e[type=arrow,tag=!revolver,nbt={item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:28b}]}}}}] run function kitpvp:arrows/revolver_init_big
scoreboard players remove @a[scores={tp_cd=1..}] tp_cd 1
execute if score %in game matches 1 if score %mode game matches 21 run clear @a glass_bottle
#execute as @a run attribute @s minecraft:attack_speed base set 69
#scoreboard players add @a kit_cooldown 0
#execute as @a if score @s kit_cooldown matches 1.. run scoreboard players remove @s kit_cooldown 1
#spawnpoint @a 87 23 -76 0.0
execute if score %in game matches 1 if score %mode game matches 21 as @a at @s if block ~ ~-1 ~ minecraft:chiseled_quartz_block run effect give @s minecraft:levitation 5 1 true
execute if score %in game matches 1 if score %mode game matches 26 as @a at @s if block ~ ~-1 ~ minecraft:chiseled_quartz_block run effect give @s minecraft:levitation 5 1 true
execute if score %in game matches 1 if score %mode game matches 21 as @a at @s if block ~ ~-1 ~ minecraft:tnt run function cc:launchpad
execute as @a[scores={axe_break=1..,Kit_ID=4}] run advancement grant @s only kitpvp:lumberjack
execute as @a[scores={axe_break=1..}] run scoreboard players set @s axe_break 0
execute as @a[scores={shield_break=1..}] run advancement grant @s only kitpvp:shield
execute as @a[scores={shield_break=1..}] run scoreboard players set @s shield_break 0

# big absorption gapple
execute as @a[scores={gapple=1..,Kit_ID=14}] at @s run function kitpvp:arrows/gapple

# freezetime thing
scoreboard players add @a freezetime 0

# ender arrow
#execute if score %mode game matches 21 run gamemode adventure @a[gamemode=spectator,predicate=!cc:is_riding_ender_arrow]
execute as @e[type=arrow,nbt={inGround:0b,item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}}}}] at @s on origin unless predicate cc:is_riding_ender_arrow run tp @s ~ ~ ~
execute as @e[type=arrow,nbt={inGround:0b,item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}}}}] at @s on origin unless predicate cc:is_riding_ender_arrow run ride @s mount @e[type=arrow,limit=1,sort=nearest]
execute as @e[type=arrow,nbt={inGround:0b,item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}}}}] on origin run gamemode spectator @s[predicate=cc:is_riding_ender_arrow]
execute as @e[type=arrow,nbt={inGround:0b,item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:33b}]}}}}] on origin run tag @s add ender_tp
execute if score %mode game matches 21 run gamemode adventure @a[gamemode=spectator,tag=!ded,tag=!out,tag=!ender_tp]
tag @a remove ender_tp

# arrow reload
scoreboard players add @a[scores={max_arrow_time=1..}] arrow_time 1
execute as @a[scores={max_arrow_time=1..}] if score @s arrow_time >= @s max_arrow_time run function kitpvp:arrows/reload
execute as @a[scores={Kit_ID=20,shoot_crossbow=6..,cowboy_mode=1}] at @s run function kitpvp:arrows/revolver_big_reload
execute as @a[scores={Kit_ID=20,shoot_crossbow=1..,cowboy_mode=3}] at @s run function kitpvp:arrows/revolver_small_reload
scoreboard players add @a[scores={Kit_ID=20,cowboy_mode=2}] arrow_time 1
scoreboard players add @a[scores={Kit_ID=20,cowboy_mode=4}] arrow_time 1
execute as @a[scores={Kit_ID=20,arrow_time=60..}] at @s run function kitpvp:arrows/revolver_give

# potion reload
execute as @a[scores={Kit_ID=11},gamemode=adventure] at @s run function kitpvp:pots/legal
execute as @a[scores={Kit_ID=22},gamemode=adventure] at @s run function kitpvp:pots/spy
execute as @a[scores={Kit_ID=26},gamemode=adventure] at @s run function kitpvp:pots/pyro