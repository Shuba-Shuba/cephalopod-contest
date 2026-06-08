# @s = player who landed on duel space
# @a[tag=duel] = dueling players (@s + opponent)

# wager
scoreboard players operation @a[tag=duel] board_money -= #wager board_duel_opponent
tellraw @a[tag=duel] [{text:"Paid $",color:red},{score:{name:"#wager",objective:"board_duel_opponent"}}," duel wager"]
scoreboard players operation #wager board_duel_opponent *= 2 calc

# announce duel
execute if score @s board_duel_opponent matches -1 run tellraw @a ["",{selector:"@a[tag=duel,sort=nearest]",separator:" vs "}," (random) for ",{text:"$",color:gold},{score:{name:"#wager",objective:"board_duel_opponent"},color:gold}," pot"]
execute unless score @s board_duel_opponent matches -1 run tellraw @a ["",{selector:"@a[tag=duel,sort=nearest]",separator:" vs "}," for ",{text:"$",color:gold},{score:{name:"#wager",objective:"board_duel_opponent"},color:gold}," pot"]

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