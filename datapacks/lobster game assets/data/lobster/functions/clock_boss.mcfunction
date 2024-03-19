# remove 1 second
scoreboard players set %tick game 0
execute if score .boss_setup game matches 1 store result bossbar lobster:time value run scoreboard players remove %second game 1
execute if score .boss_setup game matches 0 run scoreboard players add %second game 1

# refresh clock display
execute if score .boss_setup game matches 1 run bossbar set lobster:time players @a
execute if score .boss_setup game matches 1 run bossbar set lobster:time name ["Setup: ",{"score":{"objective":"game","name":"%second"}}]

# end conditions
execute if score %second game matches ..0 run function lobster:boss_start