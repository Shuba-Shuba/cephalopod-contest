# @return = wager
# input % 10^digits = opp turn
scoreboard players operation #10^digits calc *= 10 calc
execute store result score #sentinel calc run scoreboard players operation #tmp calc /= 10 calc
scoreboard players operation #sentinel calc %= 10000 calc

execute if score #sentinel calc matches 9876 run return run scoreboard players operation #tmp calc /= 10000 calc
return run function cc:board/duel/dialog/parse_input