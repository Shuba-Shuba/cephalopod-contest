# input format for random opponent:
# -<wager>

execute store result score #wager board_duel_opponent run scoreboard players operation @s board_duel_opponent *= -1 calc

tag @s add duel
tag @r[tag=!out,tag=!duel] add duel

scoreboard players set @s board_duel_opponent -1
function cc:board/duel/start