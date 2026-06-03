gamemode spectator
# this defines initial rotation
$execute positioned $(x) $(y) $(z) run tp @s ~ ~32 ~ 0 0
execute at @s store result score @s board_turn summon item_display run function cc:board/init_player_marker

# default die
clear
data remove block 0 -64 0 Items
item replace block 0 -64 0 container.0 with carrot_on_a_stick[item_model=magenta_glazed_terracotta,item_name="Normal Die"]
data modify storage cc:board tmp_rolls set value [I;1,2,3,4,5,6]
item modify block 0 -64 0 container.0 cc:board_dice
data remove storage cc:board tmp_rolls
loot give @s mine 0 -64 0

# get username
loot replace block 0 -64 0 container.0 loot cc:player_head
data modify storage cc:board players append from block 0 -64 0 Items[0].components.minecraft:profile.name

function cc:board/update_display