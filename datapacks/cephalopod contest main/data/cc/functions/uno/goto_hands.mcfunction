# check current card
data modify storage cards tmp1 set from storage cards hands[0]
execute store success score .bool deck run data modify storage cards tmp1 set from storage cards tmp

# cycle one card
data modify storage cards hands append from storage cards hands[0]
data remove storage cards hands[0]

# loop condition
execute if score .bool deck matches 1 run function cc:uno/hands/goto