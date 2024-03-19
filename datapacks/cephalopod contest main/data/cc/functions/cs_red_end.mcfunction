tag @a[team=red] add winner
tellraw @a [{"text":"All ","color":"green"},{"text":"BLU","color":"aqua"}," players died - ",{"text":"RED","color":"red"}," team wins!"]
function cc:end
scoreboard players set #tmp_ended game 1