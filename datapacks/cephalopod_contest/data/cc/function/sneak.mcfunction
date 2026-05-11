scoreboard players set @s sneak 1
execute if block ~ ~-0.5 ~ verdant_froglight run scoreboard players add @s[team=global] prayers 1
execute if block ~ ~-0.5 ~ pearlescent_froglight run scoreboard players add @s fake_prayers 1
execute if score @s[team=global] fake_prayers matches 4.. run function cc:go_to_hell
execute if score @s[tag=nun] fake_prayers matches 1.. run function cc:go_to_hell