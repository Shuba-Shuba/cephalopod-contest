# winner
execute if entity @a[tag=fight,tag=!fight_loser] run tellraw @a ["",{"selector":"@a[tag=fight,tag=!fight_loser]"}," stole $",{"score":{"name":"fight.bounty","objective":"board_turn"}}," from ",{"selector":"@a[tag=fight_loser]"}]
execute unless entity @a[tag=fight,tag=!fight_loser] run tellraw @a "Nobody won the fight"

# steal from losers
execute as @a[tag=fight_loser] run scoreboard players operation @s board_money -= fight.bounty board_turn
execute as @a[tag=fight_loser] run scoreboard players operation @a[tag=fight,tag=!fight_loser] board_money += fight.bounty board_turn
execute as @a[tag=fight] run function cc:board/update_display

# check if players need to keep weapons (backstabber persists across fights if unused)
execute as @a[tag=fight] run function cc:board/fight_keep

# move on
gamemode spectator @a[tag=fight]
scoreboard players set %fight game 0
schedule function cc:board/end_turn 2s

# clean up fight
tag @a remove fight
tag @a remove fight_loser