scoreboard players set .steps board_roll 0
execute if entity @p[tag=this] run tellraw @a ["",{selector:"@p[tag=this]"},"'s movement ended immediately because they stepped on a glue trap!"]
execute unless entity @p[tag=this] run tellraw @a ["An offline player's movement ended immediately because they stepped on a glue trap!"]
tag @p[tag=this] add glued