# remove card
function lobster:uno/discard_card
kill @s

# update previous card data
scoreboard players operation .prev_id deck = .id deck
scoreboard players operation .prev_color deck = .color deck