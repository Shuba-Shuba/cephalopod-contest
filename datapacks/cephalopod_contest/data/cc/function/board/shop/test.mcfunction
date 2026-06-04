data modify storage cc:board shop set value {title:'"test shop"'}

function cc:board/shop/dialog/add_listing_star {shop:"test"}
function cc:board/shop/dialog/add_listing {name:"penis", description:'"it\'s just a dick bro"', price:10, id:test}
function cc:board/shop/dialog/add_listing {name:"vagina", description:'"it\'s just a pussy dude"', price:20, id:test}
function cc:board/shop/dialog/add_listing {name:{text:"text component test"}, description:'"it\'s just a diddy blud"', price:6, id:test}
function cc:board/shop/dialog/add_listing {name:[{atlas:"items",sprite:"cc:item/weed"}," weed"], description:'"it\'s just a joint kirk"', price:4, id:test}
function cc:board/shop/dialog/add_listing_dice {name:'"penis dice"', description:'"it\'s just a die epstein"', rolls:[I;1,2,3], price:10}

scoreboard players enable @s board_shop
function cc:board/shop/dialog/show with storage cc:board shop