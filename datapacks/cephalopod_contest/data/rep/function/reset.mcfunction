kill @e[type=marker,tag=anchor]
scoreboard players set @a anchor_index 0
kill @e[type=mannequin,scores={anchor_index=1..}]
scoreboard players set %replay game 0