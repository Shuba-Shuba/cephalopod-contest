scoreboard players set %tmp_light game 0
scoreboard players set %tmp_light2 game -1
execute at @a run playsound minecraft:block.note_block.pling neutral @a ~ ~ ~ 1 2 1
fill -162 58 74 -164 60 74 lime_concrete
kill @e[type=marker,tag=rlgl]