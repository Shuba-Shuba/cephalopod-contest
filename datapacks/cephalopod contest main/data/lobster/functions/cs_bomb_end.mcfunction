# win
tag @a[team=blue] add winner
tellraw @a [{"text":"Bomb detonated - ","color":"green"},{"text":"BLU","color":"aqua"}," team wins!"]

# fx
execute as @e[type=tnt,tag=cs] at @s run particle minecraft:flame ~ ~.5 ~ 0 0 0 0.75 500 normal @a
execute as @e[type=tnt,tag=cs] at @s run function lobster:landed_no_kb

# end
function lobster:end
scoreboard players set #tmp_ended game 1