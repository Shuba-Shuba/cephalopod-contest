bossbar set cc:time players @a
scoreboard players set %tick game 0
execute store result bossbar cc:time value run scoreboard players remove %second game 1

# convert seconds to minutes:seconds
scoreboard players operation %minute game = %second game
scoreboard players operation %minute game /= 60 calc
scoreboard players operation %second_clock game = %second game
scoreboard players operation %second_clock game %= 60 calc

# set clock
execute if score .cs_setup game matches 0 unless score .cs_bomb game matches 1 if score %second_clock game matches ..9 run bossbar set cc:time name ["",{"score":{"objective":"game","name":"%minute"}},":0",{"score":{"objective":"game","name":"%second_clock"}}]
execute if score .cs_setup game matches 0 unless score .cs_bomb game matches 1 if score %second_clock game matches 10.. run bossbar set cc:time name ["",{"score":{"objective":"game","name":"%minute"}},":",{"score":{"objective":"game","name":"%second_clock"}}]
execute if score .cs_setup game matches 1 run bossbar set cc:time name ["Setup: ",{"score":{"objective":"game","name":"%second"}}]
execute if score .cs_bomb game matches 1 run bossbar set cc:time name ["BOMB: ",{"score":{"objective":"game","name":"%second"}}]

# end conditions
execute if score %second game matches ..0 if score .cs_setup game matches 0 if score .cs_bomb game matches 0 run function cc:cs_time_end
execute if score %second game matches ..0 if score .cs_setup game matches 0 if score .cs_bomb game matches 1 run function cc:cs_bomb_end
execute if score %second game matches ..0 if score .cs_setup game matches 1 run function cc:cs_start