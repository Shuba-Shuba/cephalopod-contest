# check if backstabber in inventory
scoreboard players set .item game 0
execute store result score .item game run clear @s iron_sword{CustomModelData:3}

# if they have backstabber: open inv, reinsert it, then save & clear inv
execute if score .item game matches 1.. run function cc:board/get_items
execute if score .item game matches 1.. run give @s iron_sword{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Backstabber","italic":false}'}}
execute if score .item game matches 1.. run data modify entity @e[type=marker,tag=this,limit=1] data.Inventory set from entity @a[tag=this,limit=1] Inventory
execute if score .item game matches 1.. run clear @s