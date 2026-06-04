# trigger num = current length of affordable items list
execute store result storage cc:board tmp_trigger int 1 run data get storage cc:board shop.items
function cc:board/shop/dialog/set_trigger_num_macro with storage cc:board
data remove storage cc:board tmp_trigger