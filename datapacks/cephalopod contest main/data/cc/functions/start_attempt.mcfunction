#execute if score %in game matches -1 run tellraw @s {"text":"Stop trying to spam the countdown. I prevented you from doing this because otherwise you could autoclick it and make people go deaf from the countdown sound being played 20 times per second.","color":"red"}
# if they spam during countdown, crash their fucking game
execute if score %in game matches -1 run scoreboard players add #spam_tracker game 1
execute if score %in game matches -1 if score #spam_tracker game matches 20.. run function cc:crash
execute if score %in game matches 0 run scoreboard players set #spam_tracker game 0
execute if score %in game matches 0 run schedule function cc:start 5s
execute if score %in game matches 0 run function cc:countdown/5
execute if score %in game matches 0 run schedule function cc:countdown/4 1s
execute if score %in game matches 0 run schedule function cc:countdown/3 2s
execute if score %in game matches 0 run schedule function cc:countdown/2 3s
execute if score %in game matches 0 run schedule function cc:countdown/1 4s
execute if score %in game matches 0 run scoreboard players set %in game -1
execute if score %in game matches 1 run tellraw @s {"text":"There is already a game currently in progress.","color":"red"}