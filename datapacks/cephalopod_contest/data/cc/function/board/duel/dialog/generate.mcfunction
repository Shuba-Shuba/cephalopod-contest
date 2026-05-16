data modify storage cc:board duel.actions set value []

tag @s add this
execute as @a[tag=!out,tag=!this] at @s run function cc:board/duel/dialog/add_opponent_choice
tag @s remove this

scoreboard players enable @s board_duel_opponent
function cc:board/duel/dialog/show with storage cc:board duel
data remove storage cc:board duel