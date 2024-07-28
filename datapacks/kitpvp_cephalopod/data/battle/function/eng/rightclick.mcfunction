# swap hands before function
function cc:swap_hands

# check if player is holding certain items and run corresponding function
execute if score @s Kit_ID matches 23 if data entity @s {SelectedItem:{id:"minecraft:crafting_table"}} if score @s metal matches 20.. if score @s sentry_count matches ..3 at @s run function battle:eng/sentry/build
execute if score @s Kit_ID matches 25 if data entity @s {SelectedItem:{id:"minecraft:crafting_table"}} if score @s metal matches 20.. if score @s sentry_count matches 0 at @s run function battle:eng/sentry/build
execute if data entity @s {SelectedItem:{id:"minecraft:anvil"}} if score @s metal matches 12.. run function battle:eng/sentry/upgrade_check
execute if data entity @s {SelectedItem:{id:"minecraft:beacon"}} if score @s metal matches 8.. run function battle:eng/sentry/heal
execute if data entity @s {SelectedItem:{id:"minecraft:tnt"}} run function battle:eng/sentry/destroy
execute if data entity @s {SelectedItem:{id:"minecraft:book"}} if score @s metal matches 10.. run function battle:eng/item