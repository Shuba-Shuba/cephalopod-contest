# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec

# bomb stuff
execute as @a[tag=!out] at @s if block ~ ~ ~ lava run function lobster:explode
execute if score %second game matches 1 if score %tick game matches 0 run function lobster:explode
execute unless score %replay game matches 1.. if score %second game matches ..0 run function lobster:bomb_respawn
execute if score %replay game matches 2 run function lobster:end
execute unless score %replay game matches 1.. run title @a[tag=bomb] actionbar {"text":"YOU HAVE THE BOMB.","color":"red"}
execute unless score %replay game matches 1.. run title @a[tag=!bomb,tag=!out] actionbar ""
#execute as @a[advancements={lobster:bomb=true}] run function lobster:bomb_pass