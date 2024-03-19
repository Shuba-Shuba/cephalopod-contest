bossbar set lobster:time players @a
scoreboard players set %tick game 0

# convert seconds to minutes:seconds
scoreboard players operation %minute game = %second game
scoreboard players operation %minute game /= 60 calc
scoreboard players operation %second_clock game = %second game
scoreboard players operation %second_clock game %= 60 calc

# set clock
execute if score .payload_setup game matches 0 if score %second_clock game matches ..9 run bossbar set lobster:time name ["Payload Progress | ",{"score":{"objective":"game","name":"%minute"}},":0",{"score":{"objective":"game","name":"%second_clock"}}]
execute if score .payload_setup game matches 0 if score %second_clock game matches 10.. run bossbar set lobster:time name ["Payload Progress | ",{"score":{"objective":"game","name":"%minute"}},":",{"score":{"objective":"game","name":"%second_clock"}}]
execute if score .payload_setup game matches 1 run bossbar set lobster:time name ["Setup: ",{"score":{"objective":"game","name":"%second"}}]