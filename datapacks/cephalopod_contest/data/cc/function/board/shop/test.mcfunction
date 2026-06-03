data modify storage cc:board shop_listings set value []
data modify storage cc:board shop_title set value '"test shop"'

function cc:board/shop/dialog/add_listing_star {in_stock:false}
function cc:board/shop/dialog/add_listing {name:"penis", description:'"it\'s just a dick bro"', price:10, id:300}
function cc:board/shop/dialog/add_listing {name:"vagina", description:'"it\'s just a pussy dude"', price:20, id:301}
function cc:board/shop/dialog/add_listing {name:{text:"text component test"}, description:'"it\'s just a diddy blud"', price:6, id:-1}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"cc:item/weed"}," weed"], description:'"it\'s just a joint kirk"', price:4, id:100}
function cc:board/shop/dialog/add_listing_dice {name:'"penis dice"', description:'"it\'s just a die epstein"', rolls:[I;1,2,3], price:10, id:400}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board