# consolidate discard pile only
data modify storage cards deck append from storage cards discard[]
data remove storage cards discard
execute store result score .size deck run data get storage cards deck

# shuffle deck (4 iterations)
function lobster:uno/shuffle/start
function lobster:uno/shuffle/start
function lobster:uno/shuffle/start
function lobster:uno/shuffle/start