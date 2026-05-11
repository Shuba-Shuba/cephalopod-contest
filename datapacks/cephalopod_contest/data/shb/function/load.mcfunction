scoreboard objectives add config dummy

## player damage
scoreboard objectives add return dummy
scoreboard objectives add join minecraft.custom:minecraft.leave_game
scoreboard objectives add hp_dmg dummy
scoreboard players set #2 hp_dmg 2
scoreboard objectives add hp health
scoreboard objectives add hp_old dummy
scoreboard objectives add prng dummy
scoreboard players set .2 prng 16383
scoreboard players set .3 prng 131071
scoreboard objectives add hit dummy
scoreboard objectives add stack dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add killerUUID0 dummy
scoreboard objectives add killerUUID1 dummy
scoreboard objectives add killerUUID2 dummy
scoreboard objectives add killerUUID3 dummy
scoreboard objectives add ownerUUID0 dummy
scoreboard objectives add ownerUUID1 dummy
scoreboard objectives add ownerUUID2 dummy
scoreboard objectives add ownerUUID3 dummy
scoreboard objectives add kills playerKillCount

scoreboard players add .minimum_damage config 0
scoreboard players add .i_ticks config 0
scoreboard players add .headshot_multiplier*100 config 0
scoreboard players add ammo_items.enabled config 0
scoreboard players add dmg_indicators.enabled config 0
scoreboard players add dmg_stacking.enabled config 0
scoreboard players add auto_reload.enabled config 0

## guns
scoreboard objectives add gun dummy
scoreboard objectives add stats dummy
scoreboard objectives add rightclick dummy
scoreboard objectives add cd dummy
scoreboard objectives add autodelay dummy
scoreboard objectives add autofire dummy
scoreboard objectives add gunid dummy
scoreboard objectives add cmd dummy
scoreboard objectives add scope dummy
scoreboard objectives add calc dummy
scoreboard objectives add protection dummy
scoreboard objectives add carrot_click minecraft.used:minecraft.carrot_on_a_stick

# [CEPHALOPOD CONTEST] laser for mini tnt + offhand carrot
scoreboard objectives add laser dummy
scoreboard objectives add offhand_carrot dummy

scoreboard objectives add raycast dummy
scoreboard players set 100 raycast 100

scoreboard players add @a cd 0

execute in cc:void run setblock 0 -64 0 yellow_shulker_box
execute in cc:void run setblock 0 -63 0 oak_sign

scoreboard objectives add reload.time dummy
scoreboard objectives add reload.repeat dummy

## projectiles (imported from RPG)
scoreboard objectives add visfix dummy
scoreboard players set .-1 visfix -1
scoreboard players set .global visfix 1

## recipes
scoreboard objectives add craft dummy

tellraw @a "Reloaded SHB weapons."