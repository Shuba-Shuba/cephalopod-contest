# setup
bossbar set lobster:time players @a
scoreboard players set %tick game 0

# set clock
bossbar set lobster:time name {"score":{"objective":"game","name":"%second"}}
execute store result bossbar lobster:time value run scoreboard players get %second game