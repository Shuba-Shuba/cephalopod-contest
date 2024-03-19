# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec

# bomb stuff
execute as @a[tag=!out] at @s if block ~ ~ ~ lava run function cc:explode
execute if score %second game matches 1 if score %tick game matches 0 run function cc:explode
execute unless score %replay game matches 1.. if score %second game matches ..0 run function cc:bomb_respawn
execute if score %replay game matches 2 run function cc:end
execute unless score %replay game matches 1.. run title @a[tag=bomb] actionbar {"text":"YOU HAVE THE BOMB.","color":"red"}
execute unless score %replay game matches 1.. run title @a[tag=!bomb,tag=!out] actionbar ""
#execute as @a[advancements={cc:bomb=true}] run function cc:bomb_pass