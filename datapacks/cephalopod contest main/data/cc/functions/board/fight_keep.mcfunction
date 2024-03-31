# @s = player
# check if they still have backstabber after fight
scoreboard players set .item game 0
execute store result score .item game run clear @s iron_sword{CustomModelData:3}

# load inv
clear
function cc:board/get_items

# reinsert backstabber if they had it
execute if score .item game matches 1.. run give @s iron_sword{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Backstabber","italic":false}'}}

# save inv and clear
data modify entity @e[type=marker,tag=this,limit=1] data.Inventory set from entity @s Inventory
clear