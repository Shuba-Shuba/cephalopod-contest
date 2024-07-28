scoreboard players set .steps board_roll 0
execute if entity @p[tag=this] run tellraw @a ["",{"selector":"@p[tag=this]"},"'s turn ended immediately because they stepped on a glue trap!"]
execute unless entity @p[tag=this] run tellraw @a ["An offline player's turn ended immediately because they stepped on a glue trap!"]
schedule function cc:board/end_turn 2s
tag @p[tag=this] add glued