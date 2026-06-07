# 1 = include, 0 = exclude
data modify storage cc:board tmp.str set from storage cc:board tmp.shops[-1]
$execute store success score #bool calc run data modify storage cc:board tmp.str set value "$(avoid1)"
execute if score #bool calc matches 1 run data modify storage cc:board tmp.str set from storage cc:board tmp.shops[-1]
$execute if score #bool calc matches 1 store success score #bool calc run data modify storage cc:board tmp.str set value "$(avoid2)"
execute if score #bool calc matches 1 run data modify storage cc:board tmp.str set from storage cc:board tmp.shops[-1]
$execute if score #bool calc matches 1 store success score #bool calc run data modify storage cc:board tmp.str set value "$(shop)"
data remove storage cc:board tmp.str

execute if score #bool calc matches 1 run data modify storage cc:board tmp.arr append from storage cc:board tmp.shops[-1]

data remove storage cc:board tmp.shops[-1]
execute if data storage cc:board tmp.shops[-1] run function cc:board/star/filter_shops with storage cc:board star_shop