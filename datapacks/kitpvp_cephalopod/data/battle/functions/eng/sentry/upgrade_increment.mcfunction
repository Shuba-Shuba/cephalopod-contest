# remove tags
tag @a remove builder

# copy sentry's builder uuid to system
scoreboard players operation %system UUID0 = @s builderUUID0
scoreboard players operation %system UUID1 = @s builderUUID1
scoreboard players operation %system UUID2 = @s builderUUID2
scoreboard players operation %system UUID3 = @s builderUUID3

# update upgrade time score
scoreboard players add @s upgrade_time 1

# search for builder and add tag if found
execute as @a if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run tag @s add builder

# notify builder about their sentry's upgrade progress
execute if score @s upgrade_time matches 2 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"||","color":"green"},{"text":"||||||||","color":"red"}," ]"]
execute if score @s upgrade_time matches 3 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"|||","color":"green"},{"text":"|||||||","color":"red"}," ]"]
execute if score @s upgrade_time matches 4 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"||||","color":"green"},{"text":"||||||","color":"red"}," ]"]
execute if score @s upgrade_time matches 5 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"|||||","color":"green"},{"text":"|||||","color":"red"}," ]"]
execute if score @s upgrade_time matches 6 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"||||||","color":"green"},{"text":"||||","color":"red"}," ]"]
execute if score @s upgrade_time matches 7 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"|||||||","color":"green"},{"text":"|||","color":"red"}," ]"]
execute if score @s upgrade_time matches 8 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"||||||||","color":"green"},{"text":"||","color":"red"}," ]"]
execute if score @s upgrade_time matches 9 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"|||||||||","color":"green"},{"text":"|","color":"red"}," ]"]
execute if score @s upgrade_time matches 10 run title @a[tag=builder] actionbar ["Upgrading Sentry - [ ",{"text":"||||||||||","color":"green"},{"text":"","color":"red"}," ]"]
execute if score @s upgrade_time matches 11 run title @a[tag=builder] actionbar "Sentry Upgraded"
execute if score @s upgrade_time matches 11 run function battle:eng/sentry/upgrade_finish