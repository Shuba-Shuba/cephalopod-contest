$scoreboard players remove @s board_money $(price)
data remove block 0 -64 0 Items
$item replace block 0 -64 0 container.0 with carrot_on_a_stick[item_model=magenta_glazed_terracotta,item_name=$(name)]
$data modify storage cc:board tmp_rolls set value $(rolls)
item modify block 0 -64 0 container.0 cc:board_dice
loot give @s mine 0 -64 0
data remove storage cc:board tmp_rolls