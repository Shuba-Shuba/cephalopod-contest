# if no join score, welcome new player
execute unless score @s join matches 0.. run tellraw @s "Welcome to Cephalopod Contest"

scoreboard players set @s join 0
#function shb:dmg/return_health
function shb:uuid

# [CEPHALOPOD CONTEST] run join hook
function cc:join