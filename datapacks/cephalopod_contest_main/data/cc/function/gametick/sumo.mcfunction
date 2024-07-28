# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec
execute if score %second game matches 0 if score %tick game matches 0 run function cc:sumo_timer

# sumo stuff
execute unless score %replay game matches 1.. as @a[tag=!out,tag=!ded,gamemode=adventure] at @s if block ~ ~-0.5 ~ barrier run tag @s add ded
#execute as @a[tag=!out,tag=!ded,gamemode=adventure] at @s if block ~ ~-0.5 ~ barrier if score %map game matches 0 run tp @s -215 119 1055 180 0
tag @a[tag=sumo,tag=ded] add loser
tag @a[tag=loser] remove sumo
tag @a[tag=loser] remove ded
execute store result score %players game if entity @a[tag=sumo]
#execute store result score %tmp_ded game if entity @a[tag=ded]
#execute store result score %tmp_on_deck game if entity @a[tag=on_deck]
#tellraw @a ["sumo: ",{"score":{"name":"%players","objective":"game"}},"\nded: ",{"score":{"name":"%tmp_ded","objective":"game"}},"\non_deck: ",{"score":{"name":"%tmp_on_deck","objective":"game"}}]
execute if score %players game matches ..1 unless score %replay game matches 1.. run function cc:sumo_end
execute if score %replay game matches 2 run function cc:end
execute if score %replay game matches 3 run function cc:sumo_start