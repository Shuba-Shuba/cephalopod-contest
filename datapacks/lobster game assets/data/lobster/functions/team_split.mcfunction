tag @a[tag=!out,tag=!ded] add tmp_unteamed
function lobster:team_loop

tellraw @a ["",{"text":"RED","color":"red"}," team: ",{"selector":"@a[team=red]"}]
tellraw @a ["",{"text":"BLU","color":"aqua"}," team: ",{"selector":"@a[team=blue]"}]