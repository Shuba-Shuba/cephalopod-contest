# game setup
function cc:camera_end
kill @e[type=arrow]
execute in cc:void run spreadplayers 616 -584 8 25 under 45 false @a[tag=!out,tag=!ded]
execute as @a[tag=!out,tag=ded] run spectate @r[tag=!out,tag=!ded]
bossbar set cc:time value 0
bossbar set cc:time max 60
scoreboard players set %second game 0

# mini tnt setup
clear @a[tag=!out]
effect clear @a[tag=!out]
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false
gamerule mobGriefing true
scoreboard players set %mode game 24
scoreboard players reset * lives
scoreboard objectives setdisplay sidebar lives
scoreboard objectives setdisplay list lives 
kill @e[type=snowball]
kill @e[type=marker,tag=bomb_level_init]
kill @e[type=marker,tag=laser_tether]
kill @e[type=marker,tag=broken_modem_tether]
kill @e[type=end_crystal]
tp @e[type=slime] 0 -160 0

## initialize classes
xp set @a[tag=!out,tag=!ded] 0 levels
xp set @a[tag=!out,tag=!ded] 0 points
scoreboard players set @a[tag=!out,tag=!ded] offhand_carrot 1
scoreboard players set @a[tag=!out,tag=!ded] lives 3
scoreboard players set %team game 1
team join no_pvp @a[tag=!out,tag=!ded]
team join global @a[tag=!out,tag=!ded,scores={class=0}]
scoreboard players set @a freeze_cd 0
scoreboard players set @a quick_bomb_cd 0
scoreboard players set @a dispenser_build 0
scoreboard players set @a build_dispenser_cd 0
scoreboard players set @a build_sentry_cd 0
scoreboard players set @a build_creeper_cd 0
scoreboard players set @a broken_modem_cd 0
scoreboard players set @a jump_cd 0
scoreboard players set @a metal_mine 0
scoreboard players set @a metal_mine_cd 0
scoreboard players set @a break_pick 0
scoreboard players set @a drill_cd 0
scoreboard players set @a load_crossbow 0
scoreboard players set @a crossbow_time 0
scoreboard players set @a shoot_crossbow 0
scoreboard players set @a crystal_count 0
scoreboard players set @a triangulator_cd 0
scoreboard players set @a warp_cd 0
scoreboard players set @a reatomize_cd 0
scoreboard players set @a shift 0
scoreboard players set @a dagger_cd 0
scoreboard players set @a cloak_cd 0

# gardener
item replace entity @a[scores={class=0}] hotbar.0 with dirt
item replace entity @a[scores={class=0}] hotbar.1 with dirt
item replace entity @a[scores={class=0}] hotbar.2 with minecraft:bow[custom_name='{"text":"Basic Ass TNT Bow","italic":false}',enchantments={punch:1},unbreakable={}]
scoreboard players set @a[scores={class=0}] jump_cd 1
item replace entity @a[scores={class=0}] hotbar.4 with minecraft:golden_pickaxe[enchantments={efficiency:255},can_break={predicates:[{blocks:"#cc:all"}],show_in_tooltip:0b}]
 
# technician
item replace entity @a[scores={class=1}] hotbar.0 with minecraft:crossbow[custom_name='{"text":"Golden Gun","italic":false}',enchantments={punch:1,quick_charge:1},unbreakable={}]
item replace entity @a[scores={class=1}] hotbar.1 with minecraft:stick[custom_name='{"text":"Broken Modem","italic":false}',custom_data={tnt:1b}]
execute as @a[scores={class=1}] at @s run function cc:give_level_bomb
#scoreboard players set @a[scores={class=1}] freeze_cd 1
#scoreboard players set @a[scores={class=1}] laser_cd 60
#item replace entity @a[scores={class=1}] hotbar.3 with minecraft:tnt_minecart[custom_name='{"text":"Quick Bomb","italic":false}',custom_data={tnt:5b}]
item replace entity @a[scores={class=1}] hotbar.3 with minecraft:hopper[custom_name='{"text":"Drill","italic":false}',custom_data={tnt:13b}]

# engineer
item replace entity @a[scores={class=2}] hotbar.0 with minecraft:spire_armor_trim_smithing_template[custom_name='{"text":"[5] Shoot Arrow","italic":false}',custom_data={tnt:7b}]
item replace entity @a[scores={class=2}] hotbar.1 with minecraft:tide_armor_trim_smithing_template[custom_name='{"text":"[10] Spawn Platform","italic":false}',custom_data={tnt:8b}]
item replace entity @a[scores={class=2}] hotbar.2 with minecraft:ward_armor_trim_smithing_template[custom_name='{"text":"[12] Throw Sentry","italic":false}',custom_data={tnt:9b}]
item replace entity @a[scores={class=2}] hotbar.3 with minecraft:wild_armor_trim_smithing_template[custom_name='{"text":"[12] Throw Creeper","italic":false}',custom_data={tnt:11b}]
#item replace entity @a[scores={class=2}] hotbar.3 with minecraft:stray_spawn_egg[entity_data={id:"minecraft:skeleton",Invulnerable:1b,CustomName:'{"text":"Dispenser"}',ArmorItems:[{},{},{},{id:"minecraft:furnace",count:1b}],HandItems:[{},{}],Tags:["dispenser","build"],NoAI:1b,DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]},can_place_on={predicates:[{blocks:"#cc:all"}],show_in_tooltip:0b},custom_name='{"text":"[FREE] Build Dispenser","italic":false}']
item replace entity @a[scores={class=2}] hotbar.4 with minecraft:golden_pickaxe[custom_name='{"text":"Metal Miner","italic":false}',enchantments={efficiency:255},can_break={predicates:[{blocks:"#cc:all"}],show_in_tooltip:0b},custom_data={tnt:18b}]

# architect
item replace entity @a[scores={class=3}] hotbar.0 with minecraft:crossbow[custom_name='{"text":"Crystal Crafter","italic":false}',enchantments={quick_charge:2}]
item replace entity @a[scores={class=3}] hotbar.1 with minecraft:bow[custom_name='{"text":"Triangulator","italic":false}',custom_model_data=11,damage=383,enchantments={infinity:1}]
item replace entity @a[scores={class=3}] hotbar.2 with minecraft:silence_armor_trim_smithing_template[custom_name='{"text":"Cloak","italic":false}',custom_data={tnt:17b}]
#item replace entity @a[scores={class=3}] hotbar.2 with minecraft:echo_shard[custom_name='{"text":"Dagger","italic":false}',custom_data={tnt:16b}]
item replace entity @a[scores={class=3}] hotbar.3 with minecraft:eye_armor_trim_smithing_template[custom_name='{"text":"Decrystalize","italic":false}',custom_data={tnt:15b}]
item replace entity @a[scores={class=3}] hotbar.4 with minecraft:netherite_upgrade_smithing_template[custom_name='{"text":"Warp","italic":false}',custom_data={tnt:14b}] 3
item replace entity @a[scores={class=3}] hotbar.8 with arrow 2