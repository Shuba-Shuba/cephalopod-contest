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
item replace entity @a[scores={class=0}] hotbar.2 with bow{display:{Name:'{"text":"Basic Ass TNT Bow","italic":false}'},Enchantments:[{id:"punch",lvl:1}],Unbreakable:1b}
scoreboard players set @a[scores={class=0}] jump_cd 1
item replace entity @a[scores={class=0}] hotbar.4 with golden_pickaxe{Enchantments:[{id:"efficiency",lvl:255}],CanDestroy:["#cc:all"],HideFlags:8}
 
# technician
item replace entity @a[scores={class=1}] hotbar.0 with crossbow{display:{Name:'{"text":"Golden Gun","italic":false}'},Enchantments:[{id:"punch",lvl:1},{id:"quick_charge",lvl:1}],Unbreakable:1b}
item replace entity @a[scores={class=1}] hotbar.1 with stick{display:{Name:'{"text":"Broken Modem","italic":false}'},tnt:1b}
execute as @a[scores={class=1}] at @s run function cc:give_level_bomb
#scoreboard players set @a[scores={class=1}] freeze_cd 1
#scoreboard players set @a[scores={class=1}] laser_cd 60
#item replace entity @a[scores={class=1}] hotbar.3 with tnt_minecart{display:{Name:'{"text":"Quick Bomb","italic":false}'},tnt:5b}
item replace entity @a[scores={class=1}] hotbar.3 with hopper{display:{Name:'{"text":"Drill","italic":false}'},tnt:13b}

# engineer
item replace entity @a[scores={class=2}] hotbar.0 with spire_armor_trim_smithing_template{tnt:7b,display:{Name:'{"text":"[5] Shoot Arrow","italic":false}'}}
item replace entity @a[scores={class=2}] hotbar.1 with tide_armor_trim_smithing_template{tnt:8b,display:{Name:'{"text":"[10] Spawn Platform","italic":false}'}}
item replace entity @a[scores={class=2}] hotbar.2 with ward_armor_trim_smithing_template{tnt:9b,display:{Name:'{"text":"[12] Throw Sentry","italic":false}'}}
item replace entity @a[scores={class=2}] hotbar.3 with wild_armor_trim_smithing_template{tnt:11b,display:{Name:'{"text":"[12] Throw Creeper","italic":false}'}}
#item replace entity @a[scores={class=2}] hotbar.3 with stray_spawn_egg{EntityTag:{id:"minecraft:skeleton",Invulnerable:1b,CustomName:'{"text":"Dispenser"}',ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b}],HandItems:[{},{}],Tags:["dispenser","build"],NoAI:1b,DeathLootTable:"",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]},HideFlags:16,CanPlaceOn:["#cc:all"],display:{Name:'{"text":"[FREE] Build Dispenser","italic":false}'}}
item replace entity @a[scores={class=2}] hotbar.4 with golden_pickaxe{display:{Name:'{"text":"Metal Miner","italic":false}'},Enchantments:[{id:"efficiency",lvl:255s}],CanDestroy:["#cc:all"],HideFlags:8,tnt:18b}

# architect
item replace entity @a[scores={class=3}] hotbar.0 with crossbow{display:{Name:'{"text":"Crystal Crafter","italic":false}'},Enchantments:[{id:"quick_charge",lvl:2s}]}
item replace entity @a[scores={class=3}] hotbar.1 with bow{display:{Name:'{"text":"Triangulator","italic":false}'},CustomModelData:11,Damage:383,Enchantments:[{id:"infinity",lvl:1s}]}
item replace entity @a[scores={class=3}] hotbar.2 with silence_armor_trim_smithing_template{tnt:17b,display:{Name:'{"text":"Cloak","italic":false}'}}
#item replace entity @a[scores={class=3}] hotbar.2 with echo_shard{tnt:16b,display:{Name:'{"text":"Dagger","italic":false}'}}
item replace entity @a[scores={class=3}] hotbar.3 with eye_armor_trim_smithing_template{tnt:15b,display:{Name:'{"text":"Decrystalize","italic":false}'}}
item replace entity @a[scores={class=3}] hotbar.4 with netherite_upgrade_smithing_template{tnt:14b,display:{Name:'{"text":"Warp","italic":false}'}} 3
item replace entity @a[scores={class=3}] hotbar.8 with arrow 2