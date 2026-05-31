# check if player is holding certain items and run corresponding function
execute if score @s Kit_ID matches 23 if score @s metal matches 20.. if score @s sentry_count matches ..3 if items entity @s weapon.mainhand *[item_model=crafting_table] at @s run function kitpvp:eng/sentry/build
execute if score @s Kit_ID matches 25 if score @s metal matches 20.. if score @s sentry_count matches 0 if items entity @s weapon.mainhand *[item_model=crafting_table] at @s run function kitpvp:eng/sentry/build
execute if score @s metal matches 12.. if items entity @s weapon.mainhand *[item_model=anvil] run function kitpvp:eng/sentry/upgrade_check
execute if score @s metal matches 8.. if items entity @s weapon.mainhand *[item_model=beacon] run function kitpvp:eng/sentry/heal
execute if items entity @s weapon.mainhand *[item_model=tnt] run function kitpvp:eng/sentry/destroy
execute if score @s metal matches 10.. if items entity @s weapon.mainhand *[item_model=book] run function kitpvp:eng/item