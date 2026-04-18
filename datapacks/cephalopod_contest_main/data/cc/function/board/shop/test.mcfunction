data modify storage cc:board shop_listings set value []

function cc:board/shop/add_star_listing {in_stock:false}

function cc:board/shop/add_listing {name:"penis", description:'"it\'s just a dick bro"', price:10, id:300}
function cc:board/shop/add_listing {name:"vagina", description:'"it\'s just a pussy dude"', price:20, id:301}
function cc:board/shop/add_listing {name:{text:"text component test"}, description:'"it\'s just a diddy blud"', price:6, id:-1}
function cc:board/shop/add_listing {name:[{atlas:"items",sprite:"cc:item/weed"}," weed"], description:'"it\'s just a joint kirk"', price:4, id:100}

function cc:board/shop/dialog with storage cc:board