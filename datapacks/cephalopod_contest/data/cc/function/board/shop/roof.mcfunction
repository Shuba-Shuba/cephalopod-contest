data modify storage cc:board shop set value {title:'"rooftop shop"'}

function cc:board/shop/dialog/add_listing_star {shop:"roof"}
# mean non-dice item price: $5.50
function cc:board/shop/dialog/add_listing {name:'"? Mystery Item"', description:'"Gives a random non-dice item from a random shop"', price:5, id:mystery}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/bundle"}," Mystery Bundle"], description:'"Gives 2 random non-dice items from random shops"', price:9, id:mystery2}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop