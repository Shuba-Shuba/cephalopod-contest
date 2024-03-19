data remove storage cards tmp1
function lobster:uno/shuffle/loop
data modify storage cards deck set from storage cards tmp1
data remove storage cards tmp1
data remove storage cards tmp
execute store result score .size deck run data get storage cards deck