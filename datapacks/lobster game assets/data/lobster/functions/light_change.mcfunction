scoreboard players operation %tmp_light3 game = %tmp_light game
execute if score %tmp_light3 game matches 1 run function lobster:green_light
execute if score %tmp_light3 game matches 0 at @a[tag=!out] run playsound minecraft:block.note_block.pling neutral @a[tag=!out] ~ ~ ~ 1 0 1
execute if score %tmp_light3 game matches 0 run fill -162 58 74 -164 60 74 red_concrete
execute if score %tmp_light3 game matches 0 run scoreboard players set %tmp_light2 game -1
execute if score %tmp_light3 game matches 0 run schedule function lobster:red_light 10t
#say light change