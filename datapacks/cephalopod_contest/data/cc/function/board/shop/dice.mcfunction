data modify storage cc:board shop set value {title:'"dice shop"'}

function cc:board/shop/dialog/add_listing_dice {name:'"Super Die"', description:'"Normal + 1"', rolls:[I;2,3,4,5,6,7], price:20}
function cc:board/shop/dialog/add_listing_dice {name:'"Gambler\'s Grave"', description:'"Same average as normal die"', rolls:[I;0,1,1,2,8,9], price:10}
function cc:board/shop/dialog/add_listing_dice {name:'"Extended Die"', description:'"Yes 0s and 7s"', rolls:[I;0,1,2,3,4,5,6,7], price:7}
function cc:board/shop/dialog/add_listing_dice {name:'"Truncated Die"', description:'"No 1s or 6s"', rolls:[I;2,3,4,5], price:7}
function cc:board/shop/dialog/add_listing_dice {name:'"Safety Die"', description:'"Slightly less than normal die on average"', rolls:[I;3,3,3,4,4], price:4}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop