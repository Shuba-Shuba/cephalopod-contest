data modify block 0 -64 0 Items set from entity @s EnderItems
execute at @e[type=marker,tag=gen_yellow] run loot spawn ~ ~ ~ mine 0 -64 0 air{drop_contents:true}
function lobster:clear_enderchest
function lobster:death
data remove block 0 -64 0 Items