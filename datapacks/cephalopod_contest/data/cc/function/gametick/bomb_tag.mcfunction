# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec

# bomb stuff
execute as @a[tag=!out] at @s if block ~ ~ ~ lava run function cc:explode
execute if score %second game matches 1 if score %tick game matches 0 run function cc:explode
execute unless score %replay game matches 1.. if score %second game matches ..0 run function cc:bomb_respawn
execute if score %replay game matches 2 run function cc:end
execute unless score %replay game matches 1.. run title @a[tag=bomb] actionbar {text:"YOU HAVE THE BOMB.",color:"red"}
execute unless score %replay game matches 1.. run title @a[tag=!bomb,tag=!out] actionbar ""
#execute as @a[advancements={cc:bomb=true}] run function cc:bomb_pass
execute if score %map game matches 7 run scoreboard players add @a[tag=!out] levitation_jump_time 1
execute if score %map game matches 7 as @a[tag=!out,tag=!ded,scores={levitation_jump_time=35..40},x=422,y=162,z=834,dx=2,dy=1,dz=2] at @s run function cc:levitation_jump_miss
execute if score %map game matches 7 as @a[tag=!out,tag=!ded,scores={levitation_jump_time=35..40},x=422,y=162,z=804,dx=2,dy=1,dz=2] at @s run function cc:levitation_jump_miss