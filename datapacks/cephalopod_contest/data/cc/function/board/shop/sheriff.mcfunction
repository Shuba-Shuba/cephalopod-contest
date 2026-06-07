data modify storage cc:board shop set value {title:'"sheriff\'s shop"'}

function cc:board/shop/dialog/add_listing_star {shop:"sheriff"}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/chorus_fruit"}," Chorus Fruit"], description:'"Consumed on use\nMoves you to a random space"', price:4, id:chorus}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/minecart"}," Random Shop Warp"], description:'"Consumed on use\nMoves you to the space before a random shop"', price:6, id:shop_tp}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/ender_eye"}," Star Warp"], description:'"Consumed on use\nMoves you to the space before the star"', price:10, id:star_tp}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop