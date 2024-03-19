scoreboard players operation #min boss_lifetime = @s boss_lifetime
scoreboard players operation #min boss_lifetime /= 60 calc
scoreboard players operation #sec boss_lifetime = @s boss_lifetime
scoreboard players operation #sec boss_lifetime %= 60 calc

execute if score #sec boss_lifetime matches 0..9 run tellraw @a ["",{"selector":"@s"}," died at ",{"score":{"name":"#min","objective":"boss_lifetime"}},":0",{"score":{"name":"#sec","objective":"boss_lifetime"}}]
execute if score #sec boss_lifetime matches 10.. run tellraw @a ["",{"selector":"@s"}," died at ",{"score":{"name":"#min","objective":"boss_lifetime"}},":",{"score":{"name":"#sec","objective":"boss_lifetime"}}]