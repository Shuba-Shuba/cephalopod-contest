scoreboard players operation #floor calc = @s board_rewards
scoreboard players operation #floor calc /= 100 calc
scoreboard players operation #dec calc = @s board_rewards
scoreboard players operation #dec calc %= 100 calc
scoreboard players operation @s board_money += #floor calc
scoreboard players reset @s board_rewards
execute if score #dec calc matches 10.. run tellraw @s [{"text":"+$","color":"green"},{"score":{"name":"#floor","objective":"calc"}}," from minigames ($",{"score":{"name":"#floor","objective":"calc"}},".",{"score":{"name":"#dec","objective":"calc"}},")"]
execute if score #dec calc matches ..9 run tellraw @s [{"text":"+$","color":"green"},{"score":{"name":"#floor","objective":"calc"}}," from minigames ($",{"score":{"name":"#floor","objective":"calc"}},".0",{"score":{"name":"#dec","objective":"calc"}},")"]