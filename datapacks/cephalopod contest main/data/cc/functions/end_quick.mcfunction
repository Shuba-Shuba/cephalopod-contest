tag @a remove winner
tag @a[tag=!out] add ded
scoreboard players set %mode game 999
function cc:end
schedule clear cc:end_screen_schedule
schedule clear cc:lobby
function cc:lobby
tellraw @a [{"selector":"@s"}," ended the game instantly"]