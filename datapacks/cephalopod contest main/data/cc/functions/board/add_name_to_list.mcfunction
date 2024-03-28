# 0 -64 0 = shulker box
# add player's username to list by creating their player head item and copying its SkullOwner.Name
data remove block 0 -64 0 Items
loot insert 0 -64 0 loot cc:player_head
data modify storage cc:board players append from block 0 -64 0 Items[0].tag.SkullOwner.Name
scoreboard players add %board_players game 1
scoreboard players add %board_players_first game 1