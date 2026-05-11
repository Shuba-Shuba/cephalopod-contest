execute store result bossbar cc:time max run scoreboard players get time.spleef config
execute store result bossbar cc:time value run scoreboard players get time.spleef config
scoreboard players operation %second game = time.spleef config
tellraw @a "Players have recieved shovels."
give @a[tag=sumo] minecraft:netherite_shovel[enchantments={"minecraft:efficiency":255},unbreakable={},can_break={blocks:"minecraft:snow_block"}]