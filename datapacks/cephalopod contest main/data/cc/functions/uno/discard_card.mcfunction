data remove storage cards tmp
execute store result storage cards tmp.id int 1 run scoreboard players get .id deck
execute store result storage cards tmp.color int 1 run scoreboard players get .color deck
function cc:uno/goto_hands
data modify storage cards discard append from storage cards hands[-1]
data remove storage cards hands[-1]