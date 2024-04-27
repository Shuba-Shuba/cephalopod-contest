# reset camera
function cc:camera_end
scoreboard players set %mode game 19

# clock
execute store result bossbar cc:time max run scoreboard players get time.admintato config
execute store result bossbar cc:time value run scoreboard players get time.admintato config
scoreboard players operation %second game = time.admintato config

# setup
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# hunter biden
tag @a remove hunter
tag @r[tag=!out,tag=!ded] add hunter
give @a[tag=hunter] minecraft:bow[enchantments={"minecraft:punch":2,"minecraft:infinity":1},unbreakable={}]
give @a[tag=hunter] arrow
execute if score %map game matches 0 in cc:void run tp @a[tag=hunter] -228 103 809 0 0

# others
execute if score %map game matches 0 in cc:void run tp @a[tag=!hunter,tag=!out,tag=!ded] -228 98 853 180 0