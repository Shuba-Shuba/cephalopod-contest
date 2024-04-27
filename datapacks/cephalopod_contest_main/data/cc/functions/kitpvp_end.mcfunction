execute as @a[tag=!ded,tag=!out] run function battle:kits/clear_kit
scoreboard players set #least kitpvp_kills 1000
scoreboard players operation #least kitpvp_kills < @a[tag=!ded,tag=!out] kitpvp_kills
execute as @a[tag=!ded,tag=!out] if score @s kitpvp_kills = #least kitpvp_kills run tag @s add ded
tag @a[tag=!ded,tag=!out] add winner
function cc:end