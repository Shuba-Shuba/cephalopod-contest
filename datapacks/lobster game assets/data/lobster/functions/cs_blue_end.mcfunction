tag @a[team=blue] add winner
tellraw @a [{"text":"All ","color":"green"},{"text":"RED","color":"red"}," players died - ",{"text":"BLU","color":"aqua"}," team wins!"]
function lobster:end
scoreboard players set #tmp_ended game 1