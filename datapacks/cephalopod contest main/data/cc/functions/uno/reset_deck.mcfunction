# consolidate the deck
data modify storage cards deck append from storage cards hands[]
data remove storage cards hands
data modify storage cards deck append from storage cards discard[]
data remove storage cards discard
execute store result score .size deck run data get storage cards deck

# shuffle deck (4 iterations)
function cc:uno/shuffle/start
function cc:uno/shuffle/start
function cc:uno/shuffle/start
function cc:uno/shuffle/start