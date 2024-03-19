scoreboard players set %system UUID0 0
scoreboard players set %system UUID1 0
scoreboard players set %system UUID2 0
scoreboard players set %system UUID3 0
execute as @a[scores={Kit_ID=23}] store result score @s metal run clear @s iron_ingot 0
scoreboard players set @a[scores={Kit_ID=25}] metal 100
scoreboard players add %second eng_time 1
execute if score %second eng_time matches 20.. run function battle:eng/second
scoreboard players add %sentry eng_time 1
#scoreboard players add %sentry_2 eng_time 1
#scoreboard players add %sentry_3 eng_time 1
#execute if score %sentry eng_time matches 8.. as @e[tag=sentry,scores={sentry_level=1}] at @s run function battle:eng/sentry/shoot
execute if score %sentry eng_time matches 10.. as @e[tag=sentry] at @s run function battle:eng/sentry/shoot
execute if score %sentry eng_time matches 10.. run scoreboard players set %sentry eng_time 0
#execute if score %sentry_2 eng_time matches 6.. as @e[tag=sentry,scores={sentry_level=2}] at @s run function battle:eng/sentry/shoot
#execute if score %sentry_2 eng_time matches 6.. run scoreboard players set %sentry_2 eng_time 0
#execute if score %sentry_3 eng_time matches 3.. as @e[tag=sentry,scores={sentry_level=3}] at @s run function battle:eng/sentry/shoot
#execute if score %sentry_3 eng_time matches 3.. run scoreboard players set %sentry_3 eng_time 0
scoreboard players add %missile eng_time 1
execute if score %missile eng_time matches 160.. as @e[tag=sentry,scores={sentry_level=2}] at @s run function battle:eng/sentry/missile
scoreboard players add @e[tag=sentry] sentry_age 1
execute as @e[tag=sentry] at @s if score @s sentry_age matches 1200.. run kill @s
scoreboard players add @a sentry_count 0
execute as @a[scores={join=1..}] at @s run function battle:eng/join

# store sentry count properly (this is like the 10th attempt at trying to do this)
execute as @a[scores={Kit_ID=23}] run function battle:eng/sentry/check
execute as @a[scores={Kit_ID=25}] run function battle:eng/sentry/check
execute as @a[scores={Kit_ID=39}] run function battle:eng/sentry/check
tag @e[tag=sentry] remove owned_sentry

# sentry kill handler
execute as @a[scores={Kit_ID=23}] run function battle:eng/sentry/kill
execute as @a[scores={Kit_ID=25}] run function battle:eng/sentry/kill
execute as @a[scores={Kit_ID=39}] run function battle:eng/sentry/kill
execute as @e[tag=sentry] store result score @s UUID0 run data get entity @s UUID[0]
execute as @e[tag=sentry] store result score @s UUID1 run data get entity @s UUID[1]
execute as @e[tag=sentry] store result score @s UUID2 run data get entity @s UUID[2]
execute as @e[tag=sentry] store result score @s UUID3 run data get entity @s UUID[3]

# homing missiles
execute as @e[tag=missile] at @s run function battle:eng/missile_move
tag @a remove missile_exempt
tag @a remove builder