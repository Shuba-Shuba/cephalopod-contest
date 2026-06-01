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
gamerule fall_damage false
gamerule mob_griefing true
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
scoreboard players set @a[tag=!out,tag=!ded] lives 3
scoreboard players set %team game 1
team join no_pvp @a[tag=!out,tag=!ded]
team join global @a[tag=!out,tag=!ded,scores={class=0}]
scoreboard players set @a freeze_cd 0
scoreboard players set @a quick_bomb_cd 0
scoreboard players set @a build_dispenser 0
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
scoreboard players set @a shoot_bow 0
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
item replace entity @a[scores={class=0}] hotbar.2 with minecraft:bow[item_name="Basic Ass TNT Bow",enchantments={punch:1},unbreakable={}]
scoreboard players set @a[scores={class=0}] jump_cd 1
item replace entity @a[scores={class=0}] hotbar.4 with minecraft:golden_pickaxe[tool={rules:[{blocks:"#cc:all"}],default_mining_speed:1000f},item_name="Penis Pickaxe",can_break={blocks:"#cc:all"},tooltip_display={hidden_components:["can_break"]}]

# technician
item replace entity @a[scores={class=1}] hotbar.0 with minecraft:crossbow[item_name="Golden Gun",enchantments={punch:1,quick_charge:1},unbreakable={}]
item replace entity @a[scores={class=1}] hotbar.1 with minecraft:carrot_on_a_stick[item_model=stick,item_name="Broken Modem",custom_data={tnt:1b}]
execute as @a[scores={class=1}] at @s run function cc:give_level_bomb
#scoreboard players set @a[scores={class=1}] freeze_cd 1
#scoreboard players set @a[scores={class=1}] laser_cd 60
#item replace entity @a[scores={class=1}] hotbar.3 with minecraft:carrot_on_a_stick[item_model=tnt_minecart,item_name="Quick Bomb",custom_data={tnt:5b}]
item replace entity @a[scores={class=1}] hotbar.3 with minecraft:carrot_on_a_stick[item_model=hopper,item_name="Drill",custom_data={tnt:13b}]

# engineer
item replace entity @a[scores={class=2}] hotbar.0 with minecraft:carrot_on_a_stick[item_model=spire_armor_trim_smithing_template,item_name="[5] Shoot Arrow",custom_data={tnt:7b}]
item replace entity @a[scores={class=2}] hotbar.1 with minecraft:carrot_on_a_stick[item_model=tide_armor_trim_smithing_template,item_name="[10] Spawn Platform",custom_data={tnt:8b}]
item replace entity @a[scores={class=2}] hotbar.2 with minecraft:carrot_on_a_stick[item_model=ward_armor_trim_smithing_template,item_name="[12] Throw Sentry",custom_data={tnt:9b}]
item replace entity @a[scores={class=2}] hotbar.3 with minecraft:carrot_on_a_stick[item_model=wild_armor_trim_smithing_template,item_name="[12] Throw Creeper",custom_data={tnt:11b}]
item replace entity @a[scores={class=2}] hotbar.4 with minecraft:golden_pickaxe[consumable={consume_seconds:0f,animation:none,sound:"intentionally_empty",has_consume_particles:false},tool={rules:[{blocks:"#cc:all"}],default_mining_speed:1e38f},item_name="Metal Miner",can_break={blocks:"#cc:all"},tooltip_display={hidden_components:["can_break"]}]

# architect
item replace entity @a[scores={class=3}] hotbar.0 with minecraft:crossbow[item_name="Crystal Crafter",enchantments={quick_charge:2}]
item replace entity @a[scores={class=3}] hotbar.1 with minecraft:bow[item_name="Triangulator",item_model="cc:holy_bow",damage=383,enchantments={infinity:1}]
item replace entity @a[scores={class=3}] hotbar.2 with minecraft:carrot_on_a_stick[item_model=silence_armor_trim_smithing_template,item_name="Cloak",custom_data={tnt:17b}]
item replace entity @a[scores={class=3}] hotbar.3 with minecraft:carrot_on_a_stick[item_model=eye_armor_trim_smithing_template,item_name="Decrystalize",custom_data={tnt:15b}]
item replace entity @a[scores={class=3}] hotbar.4 with minecraft:carrot_on_a_stick[item_model=netherite_upgrade_smithing_template,item_name="Warp",custom_data={tnt:14b}] 3
item replace entity @a[scores={class=3}] hotbar.8 with arrow 2