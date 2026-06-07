# filter out avoided shops
data modify storage cc:board tmp.shops append from storage cc:board spacelist[].shop
data modify storage cc:board tmp.arr set value []
function cc:board/star/filter_shops with storage cc:board star_shop

# choose random available shop
function cc:board/get_random_element
data modify storage cc:board tmp.shop set from storage cc:board tmp.element

# place star
function cc:board/star/place_by_name with storage cc:board tmp

# clean up
data remove storage cc:board tmp