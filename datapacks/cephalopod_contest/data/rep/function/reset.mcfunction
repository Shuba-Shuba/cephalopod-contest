kill @e[type=marker,tag=anchor]
kill @e[type=marker,tag=return_pos]
kill @e[type=marker,tag=oldest_state]
tag @a remove rep_initialized
scoreboard players set @a anchor_index 0
tp @e[type=mannequin,scores={anchor_index=1..}] 0 -1000 0
scoreboard players set %replay game 0