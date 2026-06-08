data modify storage cc:board shop set value {title:'"rooftop shop"'}

function cc:board/shop/dialog/add_listing_star {shop:"roof"}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop