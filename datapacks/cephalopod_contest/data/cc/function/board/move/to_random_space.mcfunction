# @s = board item_display
execute store result score #length calc run data get storage cc:board spacelist
execute store result score #tmp calc run random value 1..
execute store result storage cc:board tmp.i int 1 run scoreboard players operation #tmp calc %= #length calc

# overwrites tmp
function cc:board/spacelist/get_space with storage cc:board tmp

# move to space
execute store result score #tmp calc run function cc:board/move/to_space with storage cc:board tmp
data remove storage cc:board tmp
return run scoreboard players get #tmp calc