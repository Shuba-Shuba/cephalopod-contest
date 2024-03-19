# camera reset
function cc:camera_end

# start koth
scoreboard players set %mode game 6
execute store result bossbar cc:time max run scoreboard players get time.koth config
execute store result bossbar cc:time value run scoreboard players get time.koth config
scoreboard players operation %second game = time.koth config
scoreboard players reset * koth
give @a[tag=!out,tag=!ded] wooden_sword{CustomModelData:3,Enchantments:[{id:"knockback",lvl:1}],Unbreakable:1b}
scoreboard players set rep.recording config 1
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false