execute if score #difficulty stats matches 0 run difficulty peaceful
execute if score #difficulty stats matches 1 run difficulty easy
execute if score #difficulty stats matches 2 run difficulty normal
execute if score #difficulty stats matches 3 run difficulty hard
execute if score #mobs stats matches 0 run gamerule mobGriefing false
execute if score #mobs stats matches 1 run gamerule mobGriefing true
execute if score #death_messages stats matches 0 run gamerule showDeathMessages false
execute if score #death_messages stats matches 1 run gamerule showDeathMessages true
scoreboard players set #exploding stats 0