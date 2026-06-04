data modify storage cc:board shop set value {title:'"shady shop"'}

function cc:board/shop/dialog/add_listing_star {shop:"shady"}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"cc:item/weed"}," Weed"], description:'"Consumed on use\nDoubles your next roll"', price:3, id:weed}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"item/sugar"}," Coke"], description:'"Consumed on use\nTriples your next roll"', price:5, id:coke}
function cc:board/shop/dialog/add_listing {name:[{atlas:"blocks",sprite:"block/honey_block_side"}," Glue Trap"], description:'"Consumed on use\nWhoever steps on this ends their movement immediately, and their next turn will be skipped. Glue trap disappears 1 full round after it was first stepped on."', price:7, id:glue}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop