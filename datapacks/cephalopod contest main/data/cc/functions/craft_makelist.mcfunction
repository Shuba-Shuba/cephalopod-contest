#data modify storage cc:craft recipes set value ["minecraft:netherite_ingot","minecraft:netherite_ingot","minecraft:netherite_ingot"]
data remove block 0 -64 0 Items
data remove storage cc:craft recipes
data remove storage cc:craft names
loot insert 0 -64 0 loot cc:quick_craft
data modify storage cc:craft recipes append from block 0 -64 0 Items[0].id
data modify storage cc:craft recipes append from block 0 -64 0 Items[1].id
data modify storage cc:craft recipes append from block 0 -64 0 Items[2].id
data modify storage cc:craft names append from block 0 -64 0 Items[0].tag.display.Name
data modify storage cc:craft names append from block 0 -64 0 Items[1].tag.display.Name
data modify storage cc:craft names append from block 0 -64 0 Items[2].tag.display.Name
data remove block 0 -64 0 Items