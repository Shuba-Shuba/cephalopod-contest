tag @a[tag=!out,gamemode=adventure] add winner
tag @a[gamemode=spectator] add ded
tag @a[tag=winner] remove ded
execute store result score %players game if entity @a[tag=!out,gamemode=adventure]
scoreboard players set %replay_players game 1
execute unless score %bomb game matches 1.. unless score %players game matches ..1 run function lobster:bomb_respawn2
execute if score %players game matches ..1 run tag @a[tag=!out,gamemode=adventure,limit=1] add winner
execute if score %players game matches ..1 unless score %bomb game matches 1.. run function rep:play
execute if score %bomb game matches 1.. run function rep:play
scoreboard players add %bomb game 1