advancement revoke @s only shb:killed_by_bomb
function shb:dmg/kill_search
tellraw @a ["",{"selector":"@s"}," was blown up by ",{"selector":"@e[tag=killer]"}]
scoreboard players add @e[tag=killer,distance=0.01..] kills 1
tag @e remove killer

scoreboard players reset @s killerUUID0
scoreboard players reset @s killerUUID1
scoreboard players reset @s killerUUID2
scoreboard players reset @s killerUUID3