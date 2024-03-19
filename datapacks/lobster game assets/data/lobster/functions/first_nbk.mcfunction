scoreboard players set %increment game -1
scoreboard players operation #tmp1 game = %second game
scoreboard players operation #tmp2 game = %second game
scoreboard players set #60 game 60
scoreboard players operation #tmp1 game /= #60 game
scoreboard players operation #tmp2 game %= #60 game
execute if score #tmp2 game matches ..9 run tellraw @a ["",{"selector":"@s"}," won in ",{"score":{"name":"#tmp1","objective":"game"}},":0",{"score":{"name":"#tmp2","objective":"game"}}]
execute if score #tmp2 game matches 10.. run tellraw @a ["",{"selector":"@s"}," won in ",{"score":{"name":"#tmp1","objective":"game"}},":",{"score":{"name":"#tmp2","objective":"game"}}]
execute store result bossbar lobster:time max run scoreboard players set %second game 30