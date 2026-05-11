# camera reset
function cc:camera_end

# clock
scoreboard players set %mode game 15
execute unless score time.skywars config matches 1.. run tellraw @a "Reset skywars time to 30 seconds because it was set to under 1 second"
execute unless score time.skywars config matches 1.. run scoreboard players set time.skywars config 30
execute store result bossbar cc:time max run scoreboard players get time.skywars config
execute store result bossbar cc:time value run scoreboard players get time.skywars config
scoreboard players operation %second game = time.skywars config

# choose map
execute if score %map game matches 0 in cc:void run tp @a[tag=!out] 1023 71.5 264 90 0

# skywars stuff
scoreboard players set ammo_items.enabled config 1
execute in cc:void run function cc:skywars_start