# tellraw BEFORE adding because armor_level score is 1 higher than prot level
tellraw @a[team=green] ["",{"selector":"@s"}," purchased permanent protection ",{"score":{"name":"%green","objective":"armor_level"}}," upgrade"]
scoreboard players add %green armor_level 1
execute if score %green armor_level matches 2 run clear @s diamond 5
execute if score %green armor_level matches 2 run scoreboard players set %green armor_check 10
execute if score %green armor_level matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '"Price: 10 Diamonds"'
execute if score %green armor_level matches 3 run clear @s diamond 10
execute if score %green armor_level matches 3 run scoreboard players set %green armor_check 20
execute if score %green armor_level matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value '"Price: 20 Diamonds"'
execute if score %green armor_level matches 4 run clear @s diamond 20
execute if score %green armor_level matches 4 run scoreboard players set %green armor_check 30
execute if score %green armor_level matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 30 Diamonds"'
execute if score %green armor_level matches 5 run clear @s diamond 30
execute if score %green armor_level matches 5 run scoreboard players set %green armor_check 999999
execute if score %green armor_level matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value '"MAX LEVEL"'
item modify entity @a[team=green] armor.head lobster:prot
item modify entity @a[team=green] armor.chest lobster:prot
item modify entity @a[team=green] armor.legs lobster:prot
item modify entity @a[team=green] armor.feet lobster:prot