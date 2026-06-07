data modify storage cc:board tmp.arr append from storage cc:board spacelist[].shop

# choose random available shop
function cc:board/get_random_element

# this works if and only if shops are never merge points (i.e. they have exactly 1 space that is directly before it)
# no shops on the 2026 wild west board are merge points

# using SNBT representation of tmp.i to search spacelist
data modify storage cc:board tmp.i set value {}
data modify storage cc:board tmp.i.before_shop set from storage cc:board tmp.element
# overwrites tmp
function cc:board/spacelist/get_space with storage cc:board tmp

# move to space
execute store result score #tmp calc run function cc:board/move/to_space with storage cc:board tmp
data remove storage cc:board tmp
return run scoreboard players get #tmp calc