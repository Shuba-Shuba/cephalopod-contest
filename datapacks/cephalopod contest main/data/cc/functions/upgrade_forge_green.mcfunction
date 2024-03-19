scoreboard players add @e[type=marker,tag=gen_forge,tag=gen_green] gen_level 1
scoreboard players operation %green gen_level = @e[type=marker,tag=gen_forge,tag=gen_green] gen_level
execute if score %green gen_level matches 2 run clear @s diamond 4
execute if score %green gen_level matches 2 run scoreboard players set %green gen_check 8
execute if score %green gen_level matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 8 Diamonds"'
execute if score %green gen_level matches 3 run clear @s diamond 8
execute if score %green gen_level matches 3 run scoreboard players set %green gen_check 12
execute if score %green gen_level matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 12 Diamonds"'
execute if score %green gen_level matches 4 run clear @s diamond 12
execute if score %green gen_level matches 4 run scoreboard players set %green gen_check 16
execute if score %green gen_level matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 16 Diamonds"'
execute if score %green gen_level matches 5 run clear @s diamond 16
execute if score %green gen_level matches 5 run scoreboard players set %green gen_check 999999
execute if score %green gen_level matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value '"MAX LEVEL"'