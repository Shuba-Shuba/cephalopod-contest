# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players operation %second game += %increment game
execute if score %tick game matches 20.. run bossbar set cc:time name {"score":{"objective":"game","name":"%second"}}
execute if score %tick game matches 20.. if score %increment game matches -1 store result bossbar cc:time value run scoreboard players get %second game
execute if score %tick game matches 20.. run scoreboard players set %tick game 0

execute as @a[scores={laps=4..},tag=!winner] if score %increment game matches 1 run function cc:first_nbk
tag @a[scores={laps=4..}] add winner
gamemode spectator @a[tag=winner]

execute store result score %players game if entity @a[tag=!out,tag=!ded,tag=!winner]
execute if score %players game matches 0 run function cc:end
execute if score %increment game matches -1 if score %second game matches 0 run function cc:end

# nbk stuff
effect give @a[tag=!out] resistance infinite 255 true
kill @e[type=#minecraft:boats,predicate=!cc:boat_with_player]
execute as @a[tag=!out,tag=!wait,tag=!ded,predicate=cc:is_riding_boat] at @s if block ~ ~-0.5 ~ netherite_block run function cc:lap
execute as @a[tag=!out] at @s unless block ~ ~-0.5 ~ netherite_block run tag @s remove wait
execute as @a[tag=!out] at @s if entity @e[type=armor_stand,tag=itembox,distance=..1,scores={itembox_cd=0}] run function cc:itembox
scoreboard players remove @e[type=armor_stand,tag=itembox,scores={itembox_cd=1..}] itembox_cd 1
item replace entity @e[type=armor_stand,tag=itembox,scores={itembox_cd=1}] armor.head with player_head{SkullOwner:"MHF_Question"}
execute as @a[tag=!out,predicate=cc:item_in_offhand] at @s run function cc:item_use
execute as @e[type=#minecraft:boats] run data merge entity @s {FallDistance:0f}
execute as @a[tag=!out,tag=!ded,tag=!winner,predicate=!cc:is_riding_boat] at @s run function cc:jail_nbk