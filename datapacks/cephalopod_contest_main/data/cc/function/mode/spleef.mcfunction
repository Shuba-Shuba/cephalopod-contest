# camera reset
function cc:camera_end

# choose map
execute if score %map game matches 0 in cc:void run tp @a[tag=!out] -241 118 993 180 0

# clock
execute unless score time.spleef config matches 1.. run tellraw @a "Reset spleef time to 15 seconds because it was set to under 1 second"
execute unless score time.spleef config matches 1.. run scoreboard players set time.spleef config 15
execute store result bossbar cc:time max run scoreboard players get time.spleef config
execute store result bossbar cc:time value run scoreboard players get time.spleef config
scoreboard players operation %second game = time.spleef config

# spleef stuff
scoreboard players set %mode game 17
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false
execute in cc:void run function cc:spleef_start