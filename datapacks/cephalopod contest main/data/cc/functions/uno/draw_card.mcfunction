# move card from deck to hands
execute if score .size deck matches 0 run function cc:uno/reset_discard
scoreboard players remove .size deck 1
data modify storage cards hands append from storage cards deck[0]
data remove storage cards deck[0]

# calculate custom model data (100*color + id)
data remove storage cards tmp
execute store result score .cmd deck run data get storage cards hands[-1].color
scoreboard players operation .cmd deck *= 100 calc
execute store result score #tmp deck run data get storage cards hands[-1].id
execute store result storage cards tmp.cmd int 1 run scoreboard players operation .cmd deck += #tmp deck

# give card item
loot give @s loot cc:uno_draw

# end turn
execute if score .reverse turn matches 0 run scoreboard players add .current turn 1
execute if score .reverse turn matches 1 run scoreboard players remove .current turn 1