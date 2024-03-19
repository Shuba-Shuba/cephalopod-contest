scoreboard players add @e[tag=sentry,distance=..2,limit=1,sort=nearest] upgrade_time 1
scoreboard players remove @e[tag=sentry,distance=..2,limit=1,sort=nearest] sentry_age 600
title @s actionbar ["Upgrading Sentry - [ ",{"text":"|","color":"green"},{"text":"|||||||||","color":"red"}," ]"]
clear @s iron_ingot 12