execute store result bossbar cc:time max run scoreboard players get time.spleef config
execute store result bossbar cc:time value run scoreboard players get time.spleef config
scoreboard players operation %second game = time.spleef config
tellraw @a "Players have recieved shovels."
give @a[tag=sumo] netherite_shovel{Enchantments:[{id:"minecraft:efficiency",lvl:255}],Unbreakable:1b,CanDestroy:["minecraft:snow_block"]}