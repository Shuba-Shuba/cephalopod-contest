tp @a[tag=!out] 257.0 112 767 180 0
time set midnight
tellraw @a "\nPothead:\nGo around the city commiting crimes for cash. However, one of the players is the cop. The cop goes around arresting the robbers. If you get arrested (killed) by the cop, you go to jail for 30 seconds. You can wait your sentence, or bribe to get out of jail.\n"
scoreboard players set %team game 1
scoreboard players set %mode game -1
tag @a remove cop
tag @r[tag=!out] add cop
team join red @a[tag=!cop,tag=!out]
team join blue @a[tag=cop]
tellraw @a [{"selector":"@a[tag=cop]","color":"red"}," is the cop."]
team modify red friendlyFire true
team modify blue friendlyFire true
schedule function cc:mode/drugs 5s