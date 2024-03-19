# camera reset
function lobster:camera_end

# clock
scoreboard players set %mode game 15
execute unless score time.skywars config matches 1.. run tellraw @a "Reset skywars time to 30 seconds because it was set to under 1 second"
execute unless score time.skywars config matches 1.. run scoreboard players set time.skywars config 30
execute store result bossbar lobster:time max run scoreboard players get time.skywars config
execute store result bossbar lobster:time value run scoreboard players get time.skywars config
scoreboard players operation %second game = time.skywars config

# choose map
execute if score %map game matches 0 in sp:void run tp @a[tag=!out] 1023 71.5 264 90 0

# skywars stuff
scoreboard players set ammo_items.enabled config 1
execute in sp:void run function lobster:skywars_start