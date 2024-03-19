# reset camera
function lobster:camera_end

# clock
execute store result bossbar lobster:time max run scoreboard players get time.talent config
execute store result bossbar lobster:time value run scoreboard players get time.talent config

# setup
scoreboard players set %mode game 20
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# start game
tag @a remove stage
tag @a remove stage_done
function lobster:talent_end
execute if score %map game matches 0 in sp:void run tp @a[tag=!stage,tag=!out,tag=!ded] 601 107 519 0 0