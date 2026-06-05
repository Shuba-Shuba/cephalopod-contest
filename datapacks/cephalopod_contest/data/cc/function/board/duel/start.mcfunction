# @s = player who landed on duel space
tag @s add duel

# workaround for 0 not being detectable trigger input
execute if score @s board_duel_opponent matches -2 run scoreboard players set @s board_duel_opponent 0

# get opponent
execute if score @s board_duel_opponent matches -1 run tag @r[tag=!duel] add duel
execute if score @s board_duel_opponent matches 1.. as @a[tag=!out,tag=!duel] if score @s board_turn = @p[tag=duel] board_duel_opponent run tag @s add duel

# announce duel
execute if score @s board_duel_opponent matches -1 run tellraw @a ["",{selector:"@a[tag=duel,sort=nearest]",separator:" vs "}," (random)"]
execute if score @s board_duel_opponent matches 1.. run tellraw @a ["",{selector:"@a[tag=duel,sort=nearest]",separator:" vs "}]

# begin
scoreboard players reset @s board_duel_opponent
scoreboard players reset @s board_await
dialog clear @s
tag @a[tag=!out,tag=!duel] add ded
scoreboard players set %duel game 1
function cc:next_round

# notify opponent
tag @s add this
execute as @p[tag=duel,tag=!this] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 2 0 1
tag @s remove this