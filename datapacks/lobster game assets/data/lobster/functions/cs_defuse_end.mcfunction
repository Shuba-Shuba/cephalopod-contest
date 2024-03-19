tag @a[team=red] add winner
tellraw @a [{"text":"Bomb defused - ","color":"green"},{"text":"RED","color":"red"}," team wins!"]
function lobster:end
scoreboard players set #tmp_ended game 1