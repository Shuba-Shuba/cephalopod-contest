advancement revoke @s only cc:bribe
execute unless score @s money matches 50.. run tellraw @s {"text":"You can't afford to bribe the prison guard!","color":"red"}
execute if score @s money matches 50.. run scoreboard players set @s jail_time 2
execute if score @s money matches 50.. run scoreboard players add @a[tag=cop] money 50
execute if score @s money matches 50.. run tellraw @a[tag=cop] {"text":"+$50 for robber bribing prison guard","color":"green"}
execute if score @s money matches 50.. run scoreboard players remove @s money 50