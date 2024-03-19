# color: 0=wild, 1=red, 2=blue, 3=green, 4=yellow
# id: 0=0, 1=1, ... 9=9, 10=skip, 11=reverse, 12=+2, 13=wild, 14=+4
scoreboard players set .add turn 1

# reverse
execute if score .id deck matches 11 if score %players game matches 3.. run scoreboard players operation .reverse turn *= -1 calc
scoreboard players operation .add turn *= .reverse turn

# skip turn (skip / 1v1 reverse / +2 / +4)
execute if score .id deck matches 11 unless score %players game matches 3.. run scoreboard players operation .add turn *= 2 calc
execute if score .id deck matches 10 run scoreboard players operation .add turn *= 2 calc
execute if score .id deck matches 12 run scoreboard players operation .add turn *= 2 calc
execute if score .id deck matches 14 run scoreboard players operation .add turn *= 2 calc

# pick color (wild / +4)
execute if score .color deck matches 0 run scoreboard players enable @s wild_color