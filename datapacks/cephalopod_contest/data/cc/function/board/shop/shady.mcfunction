data modify storage cc:board shop_listings set value []
data modify storage cc:board shop_title set value '"shady shop"'

function cc:board/shop/dialog/add_listing_star {shop:"shady"}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"cc:item/weed"}," weed"], description:'"When used, doubles your next roll"', price:3, id:100}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/sugar"}," coke"], description:'"When used, triples your next roll"', price:5, id:101}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board