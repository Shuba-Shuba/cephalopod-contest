# start timer (1m = 1ms)
worldborder add -10000 10

# camera reset
function lobster:camera_end

# kill mobs
function lobster:kill_mobs

# map
execute store result score %map game run random value 0..4
tag @a[tag=!out,tag=!ded] add tmp_unteleported
execute in lobster:chunk run tp @a[tag=tmp_unteleported] -4 -63 0
effect give @a[tag=tmp_unteleported] resistance 3 255 true
execute as @r[tag=tmp_unteleported] in lobster:chunk positioned 0 -64 0 run function lobster:chunk_spawn

# start round
scoreboard objectives setdisplay sidebar
scoreboard players set %arena game 0
scoreboard players set %mode game 420
#tellraw @a "\nChunk Guy:\nEveryone has spawned in their own chunk, but everyone's chunk is identical. You have 10 minutes to gather resources, then you will be sent to the arena to fight each other.\n"
execute store result bossbar lobster:time max run scoreboard players get time.chunk config
execute store result bossbar lobster:time value run scoreboard players get time.chunk config
scoreboard players operation %second game = time.chunk config

# end timer
execute store result score #dwb game run worldborder get
scoreboard players remove #dwb game 59999968
scoreboard players operation #dwb game *= -1 calc
worldborder set 59999968
tellraw @a ["total load time: ",{"score":{"name":"#dwb","objective":"game"}}," ms"]