# camera reset
function cc:camera_end

# choose map
execute if score %map game matches 0 in cc:void run tp @a[tag=!out] 1521 71 344 180 0
execute if score %map game matches 1 in cc:void run tp @a[tag=!out] 1717 96 87 90 0

# start round
scoreboard players reset * laps
scoreboard players set @a[tag=!out] laps 1
scoreboard objectives setdisplay sidebar laps
#tellraw @a ["\nNitro Boat Karts:\nJust like the original minigame! Race 3 laps around the track in a boat to win.\nPress [",{"keybind":"key.swapOffhand","underlined":true},"] to use items\nGet into your boat to start the game\n"]
execute as @a[tag=!out,tag=!ded] at @s run function cc:jail_nbk
function cc:nbk_start