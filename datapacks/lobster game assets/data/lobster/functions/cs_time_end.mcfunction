# win
tag @a[team=red] add winner
tellraw @a [{"text":"Time ran out - ","color":"green"},{"text":"RED","color":"red"}," team wins!"]

# end
function lobster:end
scoreboard players set #tmp_ended game 1