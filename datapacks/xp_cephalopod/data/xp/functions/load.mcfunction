scoreboard objectives add xp_calc dummy
scoreboard players add in xp_calc 0
scoreboard objectives add config dummy
execute unless score xp.restore_lvl config matches 0..1 run tellraw @a "Reset config value for \"xp.restore_lvl\" to true because value was invalid or not set."
execute unless score xp.restore_lvl config matches 0..1 run scoreboard players set xp.restore_lvl config 1