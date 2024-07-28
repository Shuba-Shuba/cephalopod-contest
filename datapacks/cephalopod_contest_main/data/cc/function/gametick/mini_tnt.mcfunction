# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %tick game matches 20.. run fill 591 -17 -558 642 -17 -609 lava
execute if score %tick game matches 20.. run fill 591 -18 -558 642 -18 -609 barrier
execute if score %tick game matches 20.. run function cc:clock_min

# miscellaneous mini tnt stuff
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-1.5 ~ barrier run function cc:death_tnt
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-0.5 ~ barrier run function cc:death_tnt
execute as @a[predicate=cc:item_in_offhand] at @s run function cc:item_use
#execute if score tnt.track_blocks config matches 1 unless blocks 600 0 -600 632 7 -568 600 0 -550 all run function cc:blocks_changed

# no item dropping
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] run data modify entity @s PickupDelay set value 0s
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# antiwater
execute at @e[type=marker,tag=spawn_platform] run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace water
execute at @a[tag=!out,tag=!ded] run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace water

# respawn platforms
scoreboard players add @e[type=marker,tag=spawn_platform] game 1
execute as @e[type=marker,tag=spawn_platform,scores={game=10}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 frosted_ice[age=1] replace frosted_ice[age=0]
execute as @e[type=marker,tag=spawn_platform,scores={game=20}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 frosted_ice[age=2] replace frosted_ice[age=1]
execute as @e[type=marker,tag=spawn_platform,scores={game=30}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 frosted_ice[age=3] replace frosted_ice[age=2]
execute as @e[type=marker,tag=spawn_platform,scores={game=40..}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air destroy
kill @e[type=marker,tag=spawn_platform,scores={game=40..}]

# shift abilities
# scoreboard for sneak detection is better b/c sneak predicate triggers if inside top slab w/o shifting, but score does not
execute as @a[scores={shift=1..,shift_cd=0},tag=!out,tag=!ded] at @s run function cc:tnt_shift
scoreboard players set @a[scores={shift=1..}] shift 0
xp add @a[scores={shift_cd=1..}] -1 levels
scoreboard players remove @a[scores={shift_cd=1..}] shift_cd 1

# arrows
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b},x=590,y=-18,z=-610,dx=53,dy=337,dz=53] at @s if dimension cc:void run function shb:explode_destructive2
execute as @e[type=minecraft:arrow,nbt={inGround:1b},x=590,y=-18,z=-610,dx=53,dy=337,dz=53] at @s if dimension cc:void run function cc:tnt_arrow
execute as @a[tag=!out,tag=!ded] unless score @s class matches 2 store result score @s arrow_count run clear @s arrow 0
execute as @a[tag=!out,tag=!ded] if score @s class matches 2 store result score @s arrow_count run clear @s iron_ingot 0
scoreboard players add @a[tag=!out,tag=!ded,scores={class=0,arrow_count=0..2}] arrow_time 1
scoreboard players add @a[tag=!out,tag=!ded,scores={class=1,arrow_count=0}] arrow_time 1
scoreboard players add @a[tag=!out,tag=!ded,scores={class=2,arrow_count=0..39}] arrow_time 1
execute as @a[scores={class=0,arrow_time=80..}] run function cc:arrow_reload
execute as @a[scores={class=1,arrow_time=100..}] run function cc:arrow_reload
execute as @a[scores={class=2,arrow_time=20..}] run function cc:arrow_reload

# TEC level bomb
execute as @e[type=marker,tag=bomb_level_init,predicate=!cc:is_riding_bomb_egg] at @s run function cc:init_level_bomb
execute as @e[type=creeper,tag=bomb_level] at @s if entity @a[distance=..3] run data merge entity @s {ignited:1b}
execute as @e[type=creeper,tag=bomb_level,scores={level_bomb_cd=100}] run data merge entity @s {ignited:1b}
scoreboard players add @e[type=creeper,tag=bomb_level] level_bomb_cd 1
scoreboard players set @a[scores={level_bomb_place=1}] level_bomb_cd 100
scoreboard players set @a[scores={level_bomb_place=1}] level_bomb_place 0
execute as @a[scores={level_bomb_cd=1}] run function cc:give_level_bomb
scoreboard players remove @a[scores={level_bomb_cd=1..}] level_bomb_cd 1

# GAR backstabber
execute if entity @a[scores={class=0}] run function cc:backstab_tick

# GAR market gardener
scoreboard players remove @a[scores={gardener_jump=2..}] gardener_jump 1
scoreboard players remove @a[scores={gardener_jump=1},nbt={OnGround:1b}] gardener_jump 1
clear @a[scores={class=0,gardener_jump=1..}] stone_shovel
clear @a[scores={class=0,gardener_jump=0}] diamond_shovel
item replace entity @a[scores={class=0,gardener_jump=1..}] hotbar.1 with minecraft:diamond_shovel[unbreakable={},custom_name='{"text":"KB 10 ACTIVATED","color":"aqua","italic":false}',enchantments={knockback:10}]
item replace entity @a[scores={class=0,gardener_jump=0}] hotbar.1 with minecraft:stone_shovel[unbreakable={},custom_name='{"text":"Market Gardener","color":"aqua","italic":false}']

# NUL freeze potion
execute as @e[type=potion,tag=!freeze,nbt={Item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:water_breathing",amplifier:32b}]}}}}] run function cc:freeze_potion
execute as @e[type=potion,tag=freeze] run function shb:vis_fix
item replace entity @a[scores={freeze_cd=1}] hotbar.3 with minecraft:splash_potion[custom_name='{"text":"Freeze Potion","italic":false}',potion_contents={custom_color:8911871,custom_effects:[{id:"minecraft:water_breathing",amplifier:32b,duration:500}]}]
execute as @a[scores={freeze_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Freeze Potion"]
scoreboard players remove @a[scores={freeze_cd=1..}] freeze_cd 1

# GAR super jump
item replace entity @a[scores={jump_cd=1}] hotbar.3 with minecraft:blaze_powder[custom_name='{"text":"Super Jump","italic":false}',custom_data={tnt:3b}]
execute as @a[scores={jump_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Super Jump"]
execute at @a[scores={jump_time=1..}] run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 normal @a
scoreboard players remove @a[scores={jump_cd=1..}] jump_cd 1
scoreboard players remove @a[scores={jump_time=2..}] jump_time 1
scoreboard players remove @a[scores={jump_time=1},nbt={OnGround:1b}] jump_time 1

# NUL laser cooldown
#execute as @a[scores={laser_cd=1}] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick[custom_name='{"text":"Laser","italic":false}',custom_data={stats:{ammo:{type:7b}}}]
#execute as @a[scores={laser_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Laser"]
#scoreboard players remove @a[scores={laser_cd=1..}] laser_cd 1

# TEC broken modem
execute as @a[scores={broken_modem=1..}] at @s run tp @s @e[type=marker,limit=1,sort=nearest,tag=broken_modem_tether]
#execute as @a[scores={broken_modem=3..12}] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=broken_modem_tether] ^ ^ ^1
#execute at @a[scores={broken_modem=3}] run function shb:explode_destructive
#execute at @a[scores={broken_modem=3}] run function shb:explode_destructive
#execute as @a[scores={broken_modem=2}] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=broken_modem_tether] ^ ^ ^-10
execute as @a[scores={broken_modem=1}] at @s run kill @e[type=marker,limit=1,sort=nearest,tag=broken_modem_tether]
scoreboard players remove @a[scores={broken_modem=1..}] broken_modem 1
item replace entity @a[scores={broken_modem_cd=1}] hotbar.1 with minecraft:stick[custom_name='{"text":"Broken Modem","italic":false}',custom_data={tnt:1b}]
execute as @a[scores={broken_modem_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Broken Modem"]
scoreboard players remove @a[scores={broken_modem_cd=1..}] broken_modem_cd 1

# NUL recovery minecart
scoreboard players remove @a[scores={minecart_time=1..}] minecart_time 1
scoreboard players set @a[scores={shift_cd=..9,minecart_time=1..}] shift_cd 10
xp add @a[scores={shift_cd=..9,minecart_time=1..}] 1 levels
execute as @a[scores={minecart_time=1..},predicate=!cc:is_riding_recovery] run scoreboard players set @s minecart_time 1
execute as @a[scores={minecart_time=1..},predicate=!cc:is_riding_recovery] run ride @s mount @e[type=minecart,tag=recovery,limit=1,sort=nearest]
execute as @a[scores={minecart_time=1..},predicate=cc:is_riding_recovery] rotated as @s on vehicle positioned as @s run tp ^ ^ ^0.5
execute as @a[scores={minecart_time=1}] at @s run function cc:explode_minecart

# NUL quick bomb
item replace entity @a[scores={quick_bomb_cd=1}] hotbar.3 with minecraft:tnt_minecart[custom_name='{"text":"Quick Bomb","italic":false}',custom_data={tnt:5b}]
execute as @a[scores={quick_bomb_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Quick Bomb"]
scoreboard players remove @a[scores={quick_bomb_cd=1..}] quick_bomb_cd 1

# TEC drill
item replace entity @a[scores={drill_cd=1}] hotbar.3 with minecraft:hopper[custom_name='{"text":"Drill","italic":false}',custom_data={tnt:13b}]
execute as @a[scores={drill_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Drill"]
scoreboard players remove @a[scores={drill_cd=1..}] drill_cd 1
execute as @e[type=marker,tag=tnt_drill] at @s run function cc:move_drill

# NUL dispenser - accelerates arrow reload, prioritizes engineers
execute as @a[scores={build_dispenser=1}] run function cc:build_dispenser
execute as @e[type=skeleton,tag=dispenser] at @s as @a[tag=!out,tag=!ded,distance=..6] run function cc:dispense
item replace entity @a[scores={build_dispenser_cd=1}] hotbar.3 with minecraft:stray_spawn_egg[entity_data={id:"minecraft:skeleton",Passengers:[{id:"minecraft:arrow"}],Invulnerable:1b,CustomName:'{"text":"Dispenser"}',ArmorItems:[{},{},{},{id:"minecraft:furnace",count:1b}],Tags:["dispenser","build"],NoAI:1b,DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]},can_place_on={predicates:[{blocks:"#cc:all"}],show_in_tooltip:0b},custom_name='{"text":"Build Dispenser","italic":false}']
scoreboard players remove @a[scores={build_dispenser_cd=1..}] build_dispenser_cd 1

# ENG metal miner
execute as @a[scores={metal_mine=1..}] unless score @s class matches 2 run scoreboard players set @s metal_mine 0
execute as @a[scores={class=2,metal_mine=2..}] run function cc:arrow_reload
scoreboard players set @a[scores={class=2,metal_mine=2..}] metal_mine 0
scoreboard players set @a[scores={class=2,break_pick=1..}] metal_mine_cd 60
scoreboard players set @a[scores={class=2,break_pick=1..}] break_pick 0
execute as @a[scores={break_pick=1..}] unless score @s class matches 2 run scoreboard players set @s break_pick 0
item replace entity @a[scores={class=2,metal_mine_cd=1}] hotbar.4 with minecraft:golden_pickaxe[custom_name='{"text":"Metal Miner","italic":false}',enchantments={efficiency:255},can_break={predicates:[{blocks:"#cc:all"}],show_in_tooltip:0b},custom_data={tnt:18b}]
scoreboard players remove @a[scores={metal_mine_cd=1..}] metal_mine_cd 1

# ENG sentry
scoreboard players remove @e[type=skeleton,tag=tnt_sentry,scores={gardener_jump=2..}] gardener_jump 1
scoreboard players remove @e[type=skeleton,tag=tnt_sentry,scores={gardener_jump=1},nbt={OnGround:1b}] gardener_jump 1
execute as @e[type=skeleton,tag=tnt_sentry,tag=!grounded,scores={gardener_jump=0},nbt={OnGround:1b}] run function cc:sentry_landed
item replace entity @a[scores={build_sentry_cd=1}] hotbar.2 with minecraft:ward_armor_trim_smithing_template[custom_name='{"text":"[12] Throw Sentry","italic":false}',custom_data={tnt:9b}]
scoreboard players remove @a[scores={build_sentry_cd=1..}] build_sentry_cd 1
scoreboard players remove @e[type=skeleton,tag=tnt_sentry,scores={shoot_sentry_cd=1..}] shoot_sentry_cd 1
execute as @e[type=skeleton,tag=tnt_sentry,scores={shoot_sentry_cd=0}] at @s if entity @a[tag=!out,tag=!ded,distance=..10] run function cc:sentry_shoot
scoreboard players add @e[type=skeleton,tag=tnt_sentry,tag=grounded] game 1
execute as @e[type=skeleton,tag=tnt_sentry,scores={game=120..}] at @s run function cc:sentry_lava

# ENG creeper
scoreboard players remove @e[type=creeper,tag=tnt_eng,scores={gardener_jump=2..}] gardener_jump 1
scoreboard players remove @e[type=creeper,tag=tnt_eng,scores={gardener_jump=1},nbt={OnGround:1b}] gardener_jump 1
execute as @e[type=creeper,tag=tnt_eng,tag=!grounded,scores={gardener_jump=0},nbt={OnGround:1b}] run function cc:sentry_landed
item replace entity @a[scores={build_creeper_cd=1}] hotbar.3 with minecraft:wild_armor_trim_smithing_template[custom_name='{"text":"[12] Throw Creeper","italic":false}',custom_data={tnt:11b}]
scoreboard players remove @a[scores={build_creeper_cd=1..}] build_creeper_cd 1

# ARC triangulator
execute as @a[advancements={cc:shoot_triangulator=true}] at @s run function cc:shoot_triangulator
execute as @e[type=arrow,tag=init_triangulator,nbt={LeftOwner:1b}] run data modify entity @s Owner set value [I;0,0,0,0]
execute as @e[type=arrow,tag=init_triangulator,nbt={LeftOwner:1b}] run tag @s remove init_triangulator
item replace entity @a[scores={triangulator_cd=1}] hotbar.1 with minecraft:bow[custom_name='{"text":"Triangulator","italic":false}',custom_model_data=11,damage=383,enchantments={"minecraft:infinity":1}]
scoreboard players remove @a[scores={triangulator_cd=1..}] triangulator_cd 1
item replace entity @a[scores={class=3,arrow_count=0},nbt={SelectedItemSlot:1}] container.35 with arrow
item replace entity @a[scores={class=3},nbt=!{SelectedItemSlot:1,SelectedItem:{id:"minecraft:bow"}}] container.35 with air
execute as @e[type=marker,tag=tnt_triangulator,predicate=!cc:is_riding_arrow] run function cc:tag_invalid
execute as @e[type=marker,tag=tnt_triangulator,predicate=cc:is_riding_arrow] run function cc:tag_midair

# ARC crystal crafter
execute as @a[scores={class=3,crossbow_time=0}] store success score @s load_crossbow run clear @s crossbow 0
execute as @a[scores={class=3,load_crossbow=1}] run function cc:load_crystal_bow
execute as @a[scores={class=3,crossbow_time=1}] run function cc:unload_crystal_bow
scoreboard players remove @a[scores={class=3,crossbow_time=1..}] crossbow_time 1
execute as @a[scores={class=3,crossbow_time=1..}] run item modify entity @s hotbar.0 cc:crystal_bow
execute as @a[scores={class=3,shoot_crossbow=1..}] at @s run function cc:shoot_crystal_bow
execute as @a[scores={class=3}] run function cc:crystal_tick

# ARC warp cooldown
scoreboard players remove @a[scores={class=3,warp_cd=1..}] warp_cd 1

# ARC focus (shift)
scoreboard players add @e[type=marker,tag=focus_glass] focus_time 1
execute as @e[type=marker,tag=focus_glass,scores={focus_time=7..}] at @s run setblock ~ ~ ~ air destroy
kill @e[type=marker,tag=focus_glass,scores={focus_time=7..}]
execute as @a[scores={focus_time=1..}] at @s run tp @s @e[type=marker,limit=1,sort=nearest,tag=focus_tether]
execute as @a[scores={focus_time=1}] at @s run kill @e[type=marker,limit=1,sort=nearest,tag=focus_tether]
scoreboard players remove @a[scores={focus_time=1..}] focus_time 1
execute as @a[scores={shift_cd=1,class=3}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Focus (shift ability)"]

# ARC decrystalize
item replace entity @a[scores={reatomize_cd=1}] hotbar.3 with minecraft:eye_armor_trim_smithing_template[custom_name='{"text":"Decrystalize","italic":false}',custom_data={tnt:15b}]
execute as @a[scores={reatomize_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Decrystalize"]
scoreboard players remove @a[scores={reatomize_cd=1..}] reatomize_cd 1

# ARC dagger
item replace entity @a[scores={dagger_cd=1}] hotbar.2 with minecraft:echo_shard[custom_name='{"text":"Dagger","italic":false}',custom_data={tnt:16b}]
execute as @a[scores={dagger_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Dagger"]
scoreboard players remove @a[scores={dagger_cd=1..}] dagger_cd 1
execute as @e[type=marker,tag=arc_dagger] at @s positioned ^ ^ ^ facing ^ ^ ^-5.5 run function cc:dagger_tick

# ARC cloak cooldown
item replace entity @a[scores={cloak_cd=1}] hotbar.2 with minecraft:silence_armor_trim_smithing_template[custom_name='{"text":"Cloak","italic":false}',custom_data={tnt:17b}]
execute as @a[scores={cloak_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Cloak"]
scoreboard players remove @a[scores={cloak_cd=1..}] cloak_cd 1
execute as @e[type=marker,tag=arc_cloak] at @s positioned ^ ^ ^ run function cc:cloak_tick


## KEEP AT BOTTOM
# explosion processing
execute as @e[type=tnt,nbt={fuse:1s},tag=!processed] at @s run function cc:process_explosion
execute as @e[type=creeper,tag=!delta.launcher,tag=!fuse_processed,nbt={ignited:1b}] at @s run function cc:process_creeper
scoreboard players remove @e[type=creeper,tag=fuse_processed] fuse 1
execute as @e[type=creeper,tag=fuse_processed,scores={fuse=1}] at @s run function cc:process_explosion
execute as @e[type=creeper,tag=fuse_processed,scores={fuse=1}] at @s run fill ~-.5 ~-.5 ~-.5 ~.5 ~.5 ~.5 air replace #shb:blast_resistant
# process end game condition at end of function to prevent lobby destruction
execute store result score %players game if entity @a[tag=!out,tag=!ded]
execute if score %players game matches ..1 run tag @a[tag=!out,tag=!ded,limit=1] add winner
execute if score %players game matches ..1 run function cc:end