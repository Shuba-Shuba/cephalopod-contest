# move 1 card
data modify storage cards tmp append from storage cards deck[0]
data remove storage cards deck[0]

# loop
scoreboard players remove .out prng 1
execute if score .out prng matches 1.. run function lobster:uno/shuffle/get