# go to position
tellraw @a ["(",{"score":{"name":".x","objective":"heist"}},",",{"score":{"name":".z","objective":"heist"}},")"]
execute if score .x heist matches 1.. at @s run function cc:go_to_x
execute if score .z heist matches 1.. at @s run function cc:go_to_z

# make building markers
execute at @s run summon marker ~32 ~ ~ {Tags:["build_hotel","build_heist"]}
#execute at @s run summon marker ~-32 ~ ~ {Tags:["build_bank","build_heist"]}
#execute at @s run summon marker ~ ~ ~32 {Tags:["build_skyscraper","build_heist"]}

# @s = temporary untagged marker at center of building area
kill @s