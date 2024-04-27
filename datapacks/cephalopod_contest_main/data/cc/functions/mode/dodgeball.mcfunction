# camera reset
function cc:camera_end

# start round
#tellraw @a "\nDodgeball:\nThrow balls at each other. If you get hit you die. Get your ball supply at the local gay bar.\n"
scoreboard players set %mode game 8
execute store result bossbar cc:time max run scoreboard players get time.dodgeball config
execute store result bossbar cc:time value run scoreboard players get time.dodgeball config
scoreboard players operation %second game = time.dodgeball config
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# choose map
scoreboard players set %team game 1
function cc:team_split
execute if score %map game matches 0 in cc:void run tp @a[team=red] 302 103 154
execute if score %map game matches 0 in cc:void run tp @a[team=blue] 282 103 152
execute if score %map game matches 1 in cc:void run tp @a[team=red] 479 113 -48
execute if score %map game matches 1 in cc:void run tp @a[team=blue] 489 113 -28