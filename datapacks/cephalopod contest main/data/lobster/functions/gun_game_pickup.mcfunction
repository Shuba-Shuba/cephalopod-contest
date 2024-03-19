advancement revoke @s only lobster:gun_game_pickup

# teleport the loot to the map
execute if score %map game matches 0 in sp:void positioned as @e[type=marker,tag=gungame_spawn,scores={map=0},limit=1,sort=random] run loot spawn ~ ~ ~ loot lobster:gun_game_pickup