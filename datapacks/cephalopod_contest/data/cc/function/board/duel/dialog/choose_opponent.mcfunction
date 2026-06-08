# input format for specific opponent:
# <wager>9876<opp turn>

scoreboard players operation #tmp calc = @s board_duel_opponent
scoreboard players set #10^digits calc 1
execute store result score #wager board_duel_opponent run function cc:board/duel/dialog/parse_input
execute store result score #turn calc run scoreboard players operation @s board_duel_opponent %= #10^digits calc

tag @s add duel
execute as @a[tag=!out,tag=!duel] if score @s board_turn = #turn calc run tag @s add duel

function cc:board/duel/start