tag @s add ded_boss
scoreboard players set @s deaths 0
scoreboard players operation @s boss_lifetime = %second game
function lobster:landed_no_kb
tp @r[tag=!out,tag=!ded]