data modify storage cc:board shop set value {title:'"strait of homos shop"'}

function cc:board/shop/dialog/add_listing_star {shop:"strait_of_homos"}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/black_dye"}," Oil Trap"], description:'"Consumed on use\nWhoever steps on this gets 2 purple space effects as they pass. Disappears 1 full round after it was first stepped on."', price:4, id:oil}
function cc:board/shop/dialog/add_listing {name:[{atlas:"blocks",sprite:"block/tnt_side"}," TNT Trap"], description:'"Consumed on use\nWhen someone lands on this, you steal half of their money, and this disappears immediately. Does NOT activate when someone passes by without landing on it!"', price:5, id:tnt}
function cc:board/shop/dialog/add_listing {name:[{atlas:"blocks",sprite:"block/honey_block_side"}," Glue Trap"], description:'"Consumed on use\nWhoever steps on this ends their movement immediately, and their next turn will be skipped. Disappears 1 full round after it was first stepped on."', price:7, id:glue}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop