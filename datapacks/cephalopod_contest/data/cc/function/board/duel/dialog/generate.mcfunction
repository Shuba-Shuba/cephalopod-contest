data modify storage cc:board duel set value {end:3,actions:[],wager_str:"$(wager)"}

execute if score @s board_money matches 4.. store result storage cc:board duel.end int 1 run scoreboard players get @s board_money

tag @s add this
execute as @a[tag=!out,tag=!this] at @s run function cc:board/duel/dialog/add_opponent_choice
tag @s remove this

scoreboard players enable @s board_duel_opponent
function cc:board/duel/dialog/show with storage cc:board duel
data remove storage cc:board duel