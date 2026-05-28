gamemode spectator
tp @s -476 9 -1154 0 0
execute at @s store result score @s board_turn summon item_display run function cc:board/init_player_marker
clear
give @s magenta_glazed_terracotta[custom_name={text:"Normal Die",italic:false},custom_data={board:1}]

# 0 -64 0 = shulker box
# add player's username to list by creating their player head item and copying its SkullOwner.Name
data remove block 0 -64 0 Items
loot insert 0 -64 0 loot cc:player_head
data modify storage cc:board players append from block 0 -64 0 Items[0].components.minecraft:profile.name

function cc:board/update_display