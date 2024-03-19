# camera reset
function cc:camera_end
kill @e[type=wolf]
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# choose map
execute if score %map game matches 0 in cc:void run tp @a[tag=!out] -215 119 1055 180 0
execute if score %map game matches 1 in cc:void run tp @a[tag=!out] -215 119 1173 180 0
execute if score %map game matches 2 in cc:void run tp @a[tag=!out] -215 119 1291 180 0

# clock
scoreboard players set %mode game 10
execute unless score time.sumo config matches 1.. run tellraw @a "Reset sumo time to 15 seconds because it was set to under 1 second"
execute unless score time.sumo config matches 1.. run scoreboard players set time.sumo config 15
execute store result bossbar cc:time max run scoreboard players get time.sumo config
execute store result bossbar cc:time value run scoreboard players get time.sumo config
scoreboard players operation %second game = time.sumo config

# sumo stuff
execute in cc:void run function cc:sumo_start