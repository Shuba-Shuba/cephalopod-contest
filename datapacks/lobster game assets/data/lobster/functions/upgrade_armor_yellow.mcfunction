# tellraw BEFORE adding because armor_level score is 1 higher than prot level
tellraw @a[team=yellow] ["",{"selector":"@s"}," purchased permanent protection ",{"score":{"name":"%yellow","objective":"armor_level"}}," upgrade"]
scoreboard players add %yellow armor_level 1
execute if score %yellow armor_level matches 2 run clear @s diamond 5
execute if score %yellow armor_level matches 2 run scoreboard players set %yellow armor_check 10
execute if score %yellow armor_level matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 10 Diamonds"'
execute if score %yellow armor_level matches 3 run clear @s diamond 10
execute if score %yellow armor_level matches 3 run scoreboard players set %yellow armor_check 20
execute if score %yellow armor_level matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 20 Diamonds"'
execute if score %yellow armor_level matches 4 run clear @s diamond 20
execute if score %yellow armor_level matches 4 run scoreboard players set %yellow armor_check 30
execute if score %yellow armor_level matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 30 Diamonds"'
execute if score %yellow armor_level matches 5 run clear @s diamond 30
execute if score %yellow armor_level matches 5 run scoreboard players set %yellow armor_check 999999
execute if score %yellow armor_level matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value '"MAX LEVEL"'
item modify entity @a[team=yellow] armor.head lobster:prot
item modify entity @a[team=yellow] armor.chest lobster:prot
item modify entity @a[team=yellow] armor.legs lobster:prot
item modify entity @a[team=yellow] armor.feet lobster:prot