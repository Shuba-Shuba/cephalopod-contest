execute if entity @a[tag=debug] run say p

### ammo reload
execute if entity @s[advancements={shb:reload_gun=true}] run function shb:reload/start
execute if entity @s[advancements={shb:reload_gun_carrot=true}] run function shb:reload/start
execute if entity @s[advancements={shb:killed_by_bomb=true}] run function shb:killed_by_bomb

### [CEPHALOPOD CONTEST] offhand carrot stick check
execute if score @s offhand_carrot matches 1 unless predicate shb:carrot_stick_in_offhand run function shb:offhand_correct
execute if score @s offhand_carrot matches 1 store result score #tmp offhand_carrot run clear @s carrot_on_a_stick{CustomModelData:199} 0
execute if score @s offhand_carrot matches 1 if score #tmp offhand_carrot matches 2.. run function shb:offhand_correct

### load nbt
data remove storage shb:gun stats
data modify storage shb:gun stats set from entity @s SelectedItem.tag.stats

execute store result score .id stats run data get storage shb:gun stats.id
execute unless score .id stats = @s gunid run function shb:swapped
scoreboard players operation @s gunid = .id stats

### shooting
scoreboard players remove @s[scores={cd=1..}] cd 1
scoreboard players remove @s[scores={autodelay=1..}] autodelay 1

execute if predicate shb:carrot_fix run scoreboard players set @s rightclick 0
scoreboard players operation .rightclick gun = @s rightclick
scoreboard players set @s rightclick 0
execute as @s[scores={autodelay=0,autofire=1..}] run function shb:shoot/burst
execute if entity @s[advancements={shb:rightclick=true}] run function shb:shoot/start
execute if entity @s[scores={carrot_click=1..}] run function shb:shoot/start

### scope/sights
execute store result score @s cmd run data get entity @s SelectedItem.tag.CustomModelData
execute if predicate shb:scope if score @s cmd matches 201..299 run function shb:scope
execute unless predicate shb:scope if score @s cmd matches 301..399 run function shb:unscope
execute if predicate shb:scope if score @s cmd matches 301..399 run scoreboard players set @s scope 1
execute unless predicate shb:scope if score @s cmd matches 201..299 run scoreboard players set @s scope 0
execute as @s[scores={scope=1}] run function shb:tick_scope
execute as @s[scores={scope=0}] run function shb:tick_unscope

execute if score @s reload.repeat matches 1.. run function shb:reload/tick_player

# [CEPHALOPOD CONTEST] auto reload
execute if score auto_reload.enabled config matches 1 if score .loaded stats matches 0 run function shb:gun/get_stats
execute if score auto_reload.enabled config matches 1 if score .ammo.count stats matches 0 if score @s rightclick matches 0 if score @s reload.repeat matches 0 run function shb:reload/auto
### crafting recipes
execute store result score .c craft run clear @s knowledge_book
execute if score .c craft matches 1.. run function shb:craft/craft

### save nbt
execute if score .save stats matches 1 run function shb:gun/set_stats
scoreboard players set .loaded stats 0

### [CEPHALOPOD CONTEST] placeholder items
execute store result score @s placeholder run clear @s carrot_on_a_stick{placeholder:1b}
execute if score @s placeholder matches 1 run function shb:give/carrot/pistol
execute store result score @s placeholder run clear @s carrot_on_a_stick{placeholder:2b}
execute if score @s placeholder matches 1 run function shb:give/carrot/shotgun
execute store result score @s placeholder run clear @s carrot_on_a_stick{placeholder:3b}
execute if score @s placeholder matches 1 run function shb:give/carrot/rocket
execute store result score @s placeholder run clear @s carrot_on_a_stick{placeholder:4b}
execute if score @s placeholder matches 1 run function shb:give/carrot/assault_rifle
execute store result score @s placeholder run clear @s carrot_on_a_stick{placeholder:5b}
execute if score @s placeholder matches 1 run function shb:give/carrot/pistol_bad
execute store result score @s placeholder run clear @s carrot_on_a_stick{placeholder:6b}
execute if score @s placeholder matches 1 run function shb:give/carrot/sniper_bad

# xp timers
execute as @s[scores={Kit_ID=7}] run function xp:demolitionist
execute as @s[scores={Kit_ID=27}] run function xp:gravity
execute as @s[scores={Kit_ID=25}] run function xp:copycat
execute as @s[scores={Kit_ID=24}] run function xp:rpg_full
execute as @s[scores={Kit_ID=32}] run function xp:teleporter
execute as @s[scores={Kit_ID=36}] run function xp:trump
execute as @s[scores={Kit_ID=39}] run function xp:engineer_lean

# [CEPHALOPOD CONTEST] mini tnt laser
execute as @s[scores={laser=1..}] at @s run tp @s @e[type=marker,limit=1,sort=nearest,tag=laser_tether]
execute as @s[scores={laser=1}] at @s run kill @e[type=marker,limit=1,sort=nearest,tag=laser_tether]
scoreboard players remove @s[scores={laser=1..}] laser 1
execute as @s[scores={laser=20}] at @s as @e[type=marker,limit=1,sort=nearest,tag=laser_tether] at @s positioned ~ ~1.5 ~ run function shb:shoot/laser_warn
execute as @s[scores={laser=7}] at @s as @e[type=marker,limit=1,sort=nearest,tag=laser_tether] at @s positioned ~ ~1.5 ~ run function shb:shoot/laser_kill

execute if entity @a[tag=debug] run say /p