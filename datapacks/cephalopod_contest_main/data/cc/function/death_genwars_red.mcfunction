data modify block 0 -64 0 Items set from entity @s EnderItems
execute at @e[type=marker,tag=gen_red] run loot spawn ~ ~ ~ mine 0 -64 0 air[custom_data={drop_contents:1b}]
function cc:clear_enderchest
function cc:death
data remove block 0 -64 0 Items