give @s emerald 1
scoreboard players remove #tmp event_money 1
execute if score #tmp event_money matches 1.. run function cc:get_event_money_loop