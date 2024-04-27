# camera reset
function cc:camera_end

# start koth
scoreboard players set %mode game 6
execute store result bossbar cc:time max run scoreboard players get time.koth config
execute store result bossbar cc:time value run scoreboard players get time.koth config
scoreboard players operation %second game = time.koth config
scoreboard players reset * koth
give @a[tag=!out,tag=!ded] minecraft:wooden_sword[custom_model_data=3,enchantments={knockback:1},unbreakable={}]
scoreboard players set rep.recording config 1
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false