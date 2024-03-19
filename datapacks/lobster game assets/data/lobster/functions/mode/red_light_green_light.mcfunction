# camera reset
function lobster:camera_end

# choose map
execute if score %map game matches 0 in sp:void run tp @a[tag=!out] -163 53 16 0 0

# start round
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false
scoreboard players set %mode game 4
#tellraw @a "\nRed Light Green Light:\n\"Green go. Red stay.\" -Lego Island Man\n"
execute store result bossbar lobster:time max run scoreboard players get time.rlgl config
execute store result bossbar lobster:time value run scoreboard players get time.rlgl config
scoreboard players operation %second game = time.rlgl config
scoreboard players set %tmp_light game 0
scoreboard players set %tmp_light2 game -1
scoreboard players set @a walk 0
scoreboard players set @a crouch 0
scoreboard players set @a sprint 0
scoreboard players set @a jump 0
execute in sp:void run fill -162 58 74 -164 60 74 lime_concrete