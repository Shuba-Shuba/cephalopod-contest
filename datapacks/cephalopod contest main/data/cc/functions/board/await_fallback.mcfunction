# called when the player we're waiting for takes too long to choose something, this makes a default choice on their behalf
# @s = player about to lose their autonomy
tellraw @a ["",{"selector":"@s"}," lost their autonomy becasue they took too long to choose!"]
execute as @a at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 1 2

# fork - pick first available path
execute if score valid.left board_fork matches 1 run trigger board_fork set 1
execute if score valid.forward board_fork matches 1 run trigger board_fork set 2
execute if score valid.right board_fork matches 1 run trigger board_fork set 3

# shop - leave without buying anything
trigger board_shop set -1