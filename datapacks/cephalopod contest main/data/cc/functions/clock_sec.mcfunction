# setup
bossbar set cc:time players @a
scoreboard players set %tick game 0

# set clock
bossbar set cc:time name {"score":{"objective":"game","name":"%second"}}
execute store result bossbar cc:time value run scoreboard players get %second game