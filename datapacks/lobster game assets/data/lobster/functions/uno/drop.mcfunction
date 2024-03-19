# stop players from playing cards outside their turn
execute if entity @s[tag=!turn] as @e[type=item,limit=1,sort=nearest] run data modify entity @s Owner set from entity @s Thrower
execute if entity @s[tag=!turn] as @e[type=item,limit=1,sort=nearest] run data merge entity @s {PickupDelay:0s}

# check card data if played on turn
execute if entity @s[tag=turn] as @e[type=item,limit=1,sort=nearest] run function lobster:uno/check_card
execute if entity @s[tag=turn] if score .bool deck matches 1 run function lobster:uno/play_card
execute if entity @s[tag=turn] if score .bool deck matches 2 run item replace entity @s hotbar.8 with book{display:{Name:'{"text":"Draw Card","italic":false}'}}
execute if entity @s[tag=turn] if score .bool deck matches 2 run function lobster:uno/draw_card