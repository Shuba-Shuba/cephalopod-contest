tag @a remove winner
tag @a[tag=!out] add ded
scoreboard players set %mode game 999
function lobster:end
schedule clear lobster:end_screen_schedule
schedule clear lobster:lobby
function lobster:lobby
tellraw @a [{"selector":"@s"}," ended the game instantly"]