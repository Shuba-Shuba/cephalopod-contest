# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players operation %second game += %increment game
execute if score %tick game matches 20.. run bossbar set lobster:time name {"score":{"objective":"game","name":"%second"}}
execute if score %tick game matches 20.. if score %increment game matches -1 store result bossbar lobster:time value run scoreboard players get %second game
execute if score %tick game matches 20.. run scoreboard players set %tick game 0

execute as @a[scores={laps=4..},tag=!winner] if score %increment game matches 1 run function lobster:first_nbk
tag @a[scores={laps=4..}] add winner
gamemode spectator @a[tag=winner]

execute store result score %players game if entity @a[tag=!out,tag=!ded,tag=!winner]
execute if score %players game matches 0 run function lobster:end
execute if score %increment game matches -1 if score %second game matches 0 run function lobster:end

# nbk stuff
kill @e[type=#minecraft:boats,predicate=!lobster:boat_with_player]
execute as @a[tag=!out,tag=!wait,tag=!ded,predicate=lobster:is_riding_boat] at @s if block ~ ~-0.5 ~ netherite_block run function lobster:lap
execute as @a[tag=!out] at @s unless block ~ ~-0.5 ~ netherite_block run tag @s remove wait
execute as @a[tag=!out] at @s if entity @e[type=armor_stand,tag=itembox,distance=..1,scores={itembox_cd=0}] run function lobster:itembox
scoreboard players remove @e[type=armor_stand,tag=itembox,scores={itembox_cd=1..}] itembox_cd 1
item replace entity @e[type=armor_stand,tag=itembox,scores={itembox_cd=1}] armor.head with player_head{SkullOwner:"MHF_Question"}
execute as @a[tag=!out,predicate=lobster:item_in_offhand] at @s run function lobster:item_use
execute as @e[type=#minecraft:boats] run data merge entity @s {FallDistance:0f}
execute as @a[tag=!out,tag=!ded,tag=!winner,predicate=!lobster:is_riding_boat] at @s run function lobster:jail_nbk