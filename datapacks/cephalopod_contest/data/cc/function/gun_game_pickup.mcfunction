advancement revoke @s only cc:gun_game_pickup

# teleport the loot to the map
execute if score %map game matches 0 in cc:void positioned as @e[type=marker,tag=gungame_spawn,scores={map=0},limit=1,sort=random] run loot spawn ~ ~ ~ loot cc:gun_game_pickup