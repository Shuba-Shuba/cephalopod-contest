# filter out avoided shops
data modify storage cc:board tmp.shops_in append from storage cc:board spacelist[].shop
data modify storage cc:board tmp.shops_filtered set value []
function cc:board/star/filter_shops with storage cc:board star_shop

# choose random available shop
execute store result score #length calc run data get storage cc:board tmp.shops_filtered
execute store result score #tmp calc run random value 1..
execute store result storage cc:board tmp.i int 1 run scoreboard players operation #tmp calc %= #length calc
function cc:board/star/get_new_shop with storage cc:board tmp

# place star
function cc:board/star/place_by_name with storage cc:board tmp

# clean up
data remove storage cc:board tmp