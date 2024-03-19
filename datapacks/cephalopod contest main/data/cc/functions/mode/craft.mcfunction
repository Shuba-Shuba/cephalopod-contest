# start timer (1m = 1ms)
worldborder add -10000 10

# camera reset
function cc:camera_end

# teleport
scoreboard players set %map game 0
tag @a[tag=!out,tag=!ded] add tmp_unteleported
execute in cc:void run tp @a[tag=tmp_unteleported] 211 163 1071 -90 20
execute as @r[tag=tmp_unteleported] in cc:void positioned 208 133 1093 run function cc:craft_spawn_start

# tools
give @a[tag=!out] netherite_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:5}],CanDestroy:["minecraft:cobblestone","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore","minecraft:diamond_ore","minecraft:redstone_ore","minecraft:ancient_debris","minecraft:obsidian"]}
give @a[tag=!out] netherite_axe{Enchantments:[{id:"minecraft:efficiency",lvl:5}],CanDestroy:["minecraft:oak_planks","minecraft:bookshelf"]}
give @a[tag=!out] netherite_shovel{Enchantments:[{id:"minecraft:efficiency",lvl:5}],CanDestroy:["minecraft:gravel","minecraft:sand"]}

# crafting list
execute in cc:void run function cc:craft_makelist
execute as @e[type=marker,tag=craft_storage] run data modify entity @s data.craft set from storage cc:craft recipes
execute as @e[type=marker,tag=craft_storage] run data modify entity @s data.names set from storage cc:craft names
execute as @a at @s run tellraw @s ["Items to craft: ",{"nbt":"data.names[]","entity":"@e[type=marker,tag=craft_storage,limit=1,sort=nearest]","interpret":true}]

scoreboard players set %mode game 12
scoreboard players set %second game 0

# end timer
execute store result score #dwb game run worldborder get
scoreboard players remove #dwb game 59999968
scoreboard players operation #dwb game *= -1 calc
worldborder set 59999968
tellraw @a ["total load time: ",{"score":{"name":"#dwb","objective":"game"}}," ms"]