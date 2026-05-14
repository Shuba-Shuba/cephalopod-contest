data modify storage cc:board shop_listings set value []
data modify storage cc:board shop_title set value '"shady shop"'

data modify storage cc:board in_stock set value true
function cc:board/shop/dialog/add_listing_star with storage cc:board
data remove storage cc:board in_stock

function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"cc:item/weed"}," weed"], description:'"When used, doubles your next roll"', price:3, id:100}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"cc:item/sugar"}," coke"], description:'"When used, triples your next roll"', price:5, id:101}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board