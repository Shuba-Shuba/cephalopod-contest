scoreboard players set @s kills 0
scoreboard players operation @s prayers += #get prayers
scoreboard players add @s prayers 75
tellraw @s [{"text":"+","color":"green"},{"score":{"name":"#get","objective":"prayers"}}," prayers"]